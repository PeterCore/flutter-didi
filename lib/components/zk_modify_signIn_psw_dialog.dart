import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/components/dialog/zk_dialog.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZkModifySignInPswDialog {
  static void show(
    BuildContext context, {
    String title = '',
    TextStyle? titleStyle,
    String content = '',
    TextStyle? contentStyle,
    List<ButtonProperty> buttonProperty = const [],
    bool isCloseButton = true,
    Function(int index)? onClick,
  }) {
    ButtonProperty buttonProperty = ButtonProperty(
      context.l10n?.resetPswByPk ?? "",
      0,
      Colors.white,
      AppTheme.buttonGradientColors,
    );

    ButtonProperty buttonProperty_1 = ButtonProperty(
      context.l10n?.cancel ?? "",
      1,
      Colors.white,
      AppTheme.buttonGradientColors,
    );

    ZKDialog.show(context,
        isCloseButton: isCloseButton,
        title: title,
        buttonProperty: [buttonProperty, buttonProperty_1],
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
