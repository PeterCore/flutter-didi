import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/base_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/utils/app_style.dart';
import 'package:flutter/material.dart';

class BlackStylesContainer extends StatelessWidget {
  BlackStylesContainer(
      {super.key,
      required this.child,
      this.isSafeArea = true,
      this.backgroundPath,
      this.title = '',
      this.onNavBack,
      this.isAppBar = true,
      this.extendBodyBehindAppBar = true,
      this.rightActions,
      this.leading,
      this.titleTextStyle,
      this.leadingTitle,
      this.backgroundColor});
  final Color? backgroundColor;
  final Widget child;
  final String title;
  final String? backgroundPath;
  final bool extendBodyBehindAppBar;
  final bool isAppBar;
  final Widget? leading;
  final List<Widget>? rightActions;
  final Function()? onNavBack;
  TextStyle? titleTextStyle;
  final Widget? leadingTitle;
  bool? isSafeArea;
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      leading: leading,
      rightActions: rightActions,
      onNavBack: onNavBack,
      isAppBar: isAppBar,
      isSafeArea: isSafeArea,
      leadingTitle: leadingTitle,
      backgroundPath: backgroundPath,
      title: title,
      navBackImagePath: UIAssets.source!.navBackB,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: backgroundColor,
      titleTextStyle:
          AppStyle().titleMedium_35(color: AppTheme().wordPrimaryColor),
      child: child,
    );
  }
}
