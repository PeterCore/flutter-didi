import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/components/input/dk_input.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/utils/regex_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PkInputField extends StatelessWidget {
  const PkInputField({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return DKInputField(
      backgroundColor: AppTheme().inputBackgroundColor,
      cursorColor: Colors.black,
      prefixIcon: Padding(
        padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
        child: Image.asset(
          UIAssets.source!.icPk,
          width: 19.w, // 设置图片宽度
          height: 19.w, // 设置图片高度
          fit: BoxFit.contain, // 设置图片填充方式
        ),
      ),
      inputFormatters: RegexUtils.allowSecret(),
      prefixLabel: context.l10n?.keys ?? "",
      hintText: context.l10n?.inputKeys ?? "",
      controller: controller,
    );
  }
}

class InviteInputField extends StatelessWidget {
  const InviteInputField({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return DKInputField(
      backgroundColor: AppTheme().inputBackgroundColor,
      cursorColor: Colors.black,
      prefixIcon: Padding(
        padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
        child: Image.asset(
          UIAssets.source!.icIv,
          width: 19.w, // 设置图片宽度
          height: 19.w, // 设置图片高度
          fit: BoxFit.contain, // 设置图片填充方式
        ),
      ),
      inputFormatters: RegexUtils.allowInvite(),
      prefixLabel: context.l10n?.inviteCode ?? "",
      hintText: context.l10n?.inputInviteCode ?? "",
      controller: controller,
    );
  }
}

class MobileInputField extends StatelessWidget {
  const MobileInputField({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return DKInputField(
      backgroundColor: AppTheme().inputBackgroundColor,
      cursorColor: Colors.black,
      prefixIcon: Padding(
        padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
        child: Image.asset(
          UIAssets.source!.icIm,
          width: 9.w, // 设置图片宽度
          height: 9.w, // 设置图片高度
          fit: BoxFit.contain, // 设置图片填充方式
        ),
      ),
      inputFormatters: RegexUtils.allowMobile(),
      // prefixLabel: context.l10n?.mobile ?? "",
      hintText: context.l10n?.inputMobile ?? "",
      controller: controller,
    );
  }
}

class PwdInputField extends StatelessWidget {
  const PwdInputField({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return DKInputField(
      iconColor: const Color(0xFFD0D0D0),
      backgroundColor: AppTheme().inputBackgroundColor,
      cursorColor: Colors.black,
      prefixIcon: Padding(
        padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
        child: Image.asset(
          UIAssets.source!.icIp,
          width: 19.w, // 设置图片宽度
          height: 19.w, // 设置图片高度
          fit: BoxFit.contain, // 设置图片填充方式
        ),
      ),
      isObscure: true,
      inputFormatters: RegexUtils.allowPw(),
      prefixLabel: context.l10n?.password ?? "",
      hintText: context.l10n?.inputPassWord ?? "",
      controller: controller,
    );
  }
}
