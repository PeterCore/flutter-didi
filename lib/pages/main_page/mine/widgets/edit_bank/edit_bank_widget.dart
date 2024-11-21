import 'package:churn/pages/main_page/mine/logic/withdraws_controller.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../../../components/pay_psw_sheet.dart';
import '../../config/config_picker_address_styles.dart';
import '../../logic/userInfo_controller.dart';

class EditBankWidget extends StatefulWidget {
  const EditBankWidget({super.key});

  @override
  State<EditBankWidget> createState() => _EditBankWidgetState();
}

class _EditBankWidgetState extends State<EditBankWidget> {
  UserInfoController userInfoController = UserInfoController();
  WithdrawsController withdrawsController = WithdrawsController();
  double width = 100;
  final TextEditingController _bankCardNoController = TextEditingController();
  final TextEditingController _detailAddressController =
      TextEditingController();
  String selectedBankName = "";
  String selectedRegion = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _bankCardNoController.dispose();
    _detailAddressController.dispose();
    super.dispose();
  }

  void commit() {
    FocusScope.of(context).requestFocus(FocusNode());

    if (selectedBankName.isEmpty) {
      EasyLoading.showError("请选择银行");
      return;
    }
    if (_bankCardNoController.text.isEmpty) {
      EasyLoading.showError("请输入有效银行卡号");
      return;
    }
    if (_bankCardNoController.text.isNotEmpty) {
      bool valid = RegexUtils.allowBankNo(_bankCardNoController.text);
      if (!valid) {
        EasyLoading.showError("请输入有效银行卡号");
        return;
      }
    }
    if (selectedRegion.isEmpty) {
      EasyLoading.showError("请选择开户城市");
      return;
    }
    if (_detailAddressController.text.isEmpty) {
      EasyLoading.showError("请输入开户行");
      return;
    }
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (p) {
      EasyLoading.show();
      bindBankCard(
              bankName: selectedBankName,
              bankAddress: _detailAddressController.text,
              region: selectedRegion,
              bankCode: _bankCardNoController.text,
              pwd: p)
          .then((value) {
        value.ifSuccess((data) {
          withdrawsController.getWithdrawsConfig();
          EasyLoading.showSuccess(data.msg ?? "");
          context.pop(true);
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 12.h, left: 10.w, right: 10.w),
        child: Column(
          children: [
            RoundContainer(
              vertical: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width, // 设置固定宽度以确保对齐
                          child: Text(
                            '开户人姓名：',
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                          ),
                        ),
                        Expanded(
                          child: Text(
                            userInfoController.userInfoModel.data?.realname ??
                                "", // 显示选择的地址
                            style: TextStyleUtils.getTextStyle(
                              AppTheme().wordPrimaryColor,
                            ), // 使用封装样式
                            textAlign: TextAlign.left, // 左对齐
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  // 选择银行卡号
                  GestureDetector(
                    onTap: () {
                      final cardList =
                          userInfoController.userInfoModel?.data?.cardlist ??
                              [];

                      PickerBottomPicker.pickerNormal(context,
                          pickers: cardList, onSelected: (value) {
                        setState(() {
                          selectedBankName = value;
                        });
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width, // 设置固定宽度以确保对齐
                            child: Text(
                              '选择银行：',
                              style: TextStyleUtils.getTextStyle(
                                  AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                            ),
                          ),
                          Expanded(
                            child: Text(
                              selectedBankName.isEmpty
                                  ? '请选择'
                                  : selectedBankName, // 显示选择的地区
                              style: TextStyleUtils.getTextStyle(
                                selectedBankName.isEmpty
                                    ? Colors.grey
                                    : AppTheme().wordPrimaryColor,
                              ), // 使用封装样式
                              textAlign: TextAlign.left, // 左对齐
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 12.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  // 银行卡号
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width, // 设置固定宽度以确保对齐
                        child: Text(
                          '银行卡号：',
                          style: TextStyleUtils.getTextStyle(
                              AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly, // 只允许输入数字
                            LengthLimitingTextInputFormatter(19),
                          ],
                          controller: _bankCardNoController,
                          keyboardType: TextInputType.number,
                          style: TextStyleUtils.getTextStyle(
                              Colors.white), // 使用封装样式
                          textAlign: TextAlign.left, // 左对齐
                          decoration: InputDecoration(
                            hintText: '请输入有效的银行卡号',
                            hintStyle: TextStyleUtils.getTextStyle(
                                Colors.grey), // 统一的灰色字体样式
                            border: InputBorder.none, // 无边框
                          ),
                          onChanged: (value) {
                            // if (!isValidPhoneNumber(value)) {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(
                            //       content: Text('请输入有效的手机号'),
                            //     ),
                            //   );
                            // }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  // 所在地区
                  GestureDetector(
                    onTap: () {
                      PickerBottomPicker.pickerAddress(context,
                          onSelected: (p, c, t) {
                        setState(() {
                          selectedRegion = "$p $c $t";
                        });
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width, // 设置固定宽度以确保对齐
                            child: Text(
                              '开户城市：',
                              style: TextStyleUtils.getTextStyle(
                                  AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                            ),
                          ),
                          Expanded(
                            child: Text(
                              selectedRegion.isEmpty
                                  ? '开户城市'
                                  : selectedRegion, // 显示选择的地区
                              style: TextStyleUtils.getTextStyle(
                                selectedRegion.isEmpty
                                    ? Colors.grey
                                    : AppTheme().wordPrimaryColor,
                              ), // 使用封装样式
                              textAlign: TextAlign.left, // 左对齐
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 12.w,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 1, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  // 详细地址
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width, // 设置固定宽度以确保对齐
                        child: Text(
                          '开户行：',
                          style: TextStyleUtils.getTextStyle(
                              AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _detailAddressController,
                          style: TextStyleUtils.getTextStyle(
                              Colors.white), // 使用封装样式
                          textAlign: TextAlign.left, // 左对齐
                          decoration: InputDecoration(
                            hintText: '请输入开户行即可',
                            hintStyle: TextStyleUtils.getTextStyle(
                                Colors.grey), // 统一的灰色字体样式
                            border: InputBorder.none, // 无边框
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GradientButton(
                text: "立即添加",
                onPressed: (index) {
                  commit();
                }),
            SizedBox(
              height: 50.h,
            ),
            RoundContainer(
              vertical: 30.h,
              child: Text(
                userInfoController.userInfoModel.data?.bankcontent ?? "",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    height: 1.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
