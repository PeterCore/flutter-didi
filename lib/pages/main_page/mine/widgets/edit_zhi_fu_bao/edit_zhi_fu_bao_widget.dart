import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/pages/main_page/mine/logic/withdraws_controller.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/config_picker_address_styles.dart';
import '../../logic/userInfo_controller.dart';

class EditZhiFuBaoWidget extends StatefulWidget {
  const EditZhiFuBaoWidget({super.key});

  @override
  State<EditZhiFuBaoWidget> createState() => _EditZhiFuBaoWidgetState();
}

class _EditZhiFuBaoWidgetState extends State<EditZhiFuBaoWidget> {
  TextEditingController zhiFuBaoAccountController = TextEditingController();
  WithdrawsController withdrawsController = WithdrawsController();
  double width = 100;
  UserInfoController userInfoController = UserInfoController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void commit() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (zhiFuBaoAccountController.text.isEmpty) {
      EasyLoading.showError("请输入支付宝账号");
      return;
    }
    if (zhiFuBaoAccountController.text.isNotEmpty) {
      final valid =
          RegexUtils.allowZhiFuBaoCard(zhiFuBaoAccountController.text);
      if (!valid) {
        EasyLoading.showError("请输入有效的支付宝账号");
        return;
      }
    }
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (p) {
      EasyLoading.show();
      bindZhiFuBaoAccount(account: zhiFuBaoAccountController.text, pwd: p)
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
  void dispose() {
    // TODO: implement dispose
    zhiFuBaoAccountController.dispose();
    super.dispose();
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
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width, // 设置固定宽度以确保对齐
                        child: Text(
                          '支付宝姓名：',
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
                  SizedBox(
                    height: 17.h,
                  ),
                  SizedBox(
                    height: 1, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width, // 设置固定宽度以确保对齐
                        child: Text(
                          '支付宝账号：',
                          style: TextStyleUtils.getTextStyle(
                              AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: zhiFuBaoAccountController,
                          style: TextStyleUtils.getTextStyle(
                              AppTheme().wordPrimaryColor), // 使用封装样式
                          textAlign: TextAlign.left, // 左对齐
                          decoration: InputDecoration(
                            hintText: '请输入支付宝账号',
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
              vertical: 60.h,
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
