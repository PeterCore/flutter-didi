import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/pages/main_page/mine/logic/withdraws_controller.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/user_info_data.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/tron_utils.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';
import '../../config/config_picker_address_styles.dart';
import '../../logic/userInfo_controller.dart';

class EditWalletWidget extends StatefulWidget {
  const EditWalletWidget({super.key});

  @override
  State<EditWalletWidget> createState() => _EditWalletWidgetState();
}

class _EditWalletWidgetState extends State<EditWalletWidget> {
  TextEditingController addressController = TextEditingController();
  WithdrawsController withdrawsController = WithdrawsController();
  double width = 80;
  UserInfoController userInfoController = UserInfoController();
  UsdtTypeList? selectedAddress;
  List<UsdtTypeList> wallets = [];

  @override
  void initState() {
    // TODO: implement initState
    wallets = userInfoController.userInfoModel?.data?.usdtTypeList ?? [];
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    addressController.dispose();
    super.dispose();
  }

  void commit() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (selectedAddress == null) {
      EasyLoading.showError("请选择对应钱包种类");
      return;
    }
    if (addressController.text.isEmpty) {
      EasyLoading.showError("请输入钱包地址");
      return;
    }
    if (addressController.text.isNotEmpty) {
      bool valid = TronUtils.isValidTronAddress(addressController.text);
      if (!valid) {
        EasyLoading.showError("请输入有效的钱包地址");
        return;
      }
    }
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (p) {
      EasyLoading.show();
      bindDexWallet(
              dexWalletType: selectedAddress?.title ?? "",
              address: addressController.text,
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
              horizontal: 16.w,
              vertical: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      final list = wallets.map((e) => e.title).toList();
                      PickerBottomPicker.pickerNormal(context, pickers: list,
                          onSelected: (value) {
                        setState(() {
                          selectedAddress = wallets
                              .where((e) => e.title == value)
                              .toList()
                              .first;
                        });
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width, // 设置固定宽度以确保对齐
                          child: Text(
                            '地址类型：',
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                          ),
                        ),
                        Expanded(
                          child: Text(
                            selectedAddress == null
                                ? '请选择'
                                : selectedAddress?.title ?? "", // 显示选择的地址
                            style: TextStyleUtils.getTextStyle(
                              selectedAddress == null
                                  ? AppTheme().wordSecondColor
                                  : AppTheme().wordPrimaryColor,
                            ), // 使用封装样式
                            textAlign: TextAlign.left, // 左对齐
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppTheme().wordPrimaryColor,
                          size: 12.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 1, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width,
                        child: Text(
                          '钱包地址：',
                          style: TextStyleUtils.getTextStyle(
                              AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextField(
                            cursorColor: AppTheme().wordPrimaryColor,
                            controller: addressController,
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 使用封装样式
                            textAlign: TextAlign.left, // 左对齐
                            decoration: InputDecoration(
                              hintText: '请输入收款人钱包',
                              hintStyle: TextStyleUtils.getTextStyle(
                                  AppTheme().wordSecondColor), // 统一的灰色字体样式
                              border: InputBorder.none, // 无边框
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  pushPage(context, path: PagePath.userGuidePage);
                },
                child: Text(
                  "如何获取钱包付款钱包地址？",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppTheme().themeBackGroundColor,
                      fontWeight: FontWeight.w400,
                      height: 1.4),
                ),
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
              vertical: 16.h,
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
