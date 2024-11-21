import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/components/dialog/zk_dialog.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZkModifySignInPwdDialog {
  static void show(
    BuildContext context, {
    String title = '修改/重置登录密码',
    TextStyle? titleStyle,
    String content = '请选择修改修改登录密码的方式',
    TextStyle? contentStyle,
    List<ButtonProperty> buttonProperty = const [],
    bool isCloseButton = false,
    Function(int index)? onClick,
  }) {
    ButtonProperty buttonProperty = ButtonProperty(
      "使用密钥重置",
      0,
      Colors.white,
      AppTheme.buttonGradientColors,
    );

    ButtonProperty buttonProperty_1 = ButtonProperty(
      "使用原登录密码重置",
      1,
      Colors.white,
      AppTheme.buttonGradientColors,
    );

    ZKDialog.show(context,
        isCloseButton: true,
        title: title,
        buttonProperty: [
          buttonProperty,
          buttonProperty_1,
        ],
        titleStyle: TextStyle(
            fontSize: 17.sp,
            height: 1.2,
            fontWeight: FontWeight.w500,
            color: AppTheme().wordPrimaryColor),
        content: context.l10n!.modifySignInPsw,
        contentStyle: TextStyle(
            fontSize: 14.sp,
            height: 1.6,
            fontWeight: FontWeight.w400,
            color: AppTheme().wordSecondColor), onClick: (index) {
      onClick?.call(index);
    });
  }
}
