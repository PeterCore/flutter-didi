import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseContainer extends StatelessWidget {
  BaseContainer(
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
      this.backgroundColor,
      this.navBackImagePath});
  final Color? backgroundColor;
  final String? navBackImagePath;
  final Widget child;
  final String title;
  final String? backgroundPath;
  final bool extendBodyBehindAppBar;
  final bool isAppBar;
  final Widget? leading;
  final List<Widget>? rightActions;
  final Function()? onNavBack;
  final TextStyle? titleTextStyle;
  final Widget? leadingTitle;
  bool? isSafeArea;

  PreferredSizeWidget? _buildAppBar(BuildContext context) {
    if (isAppBar == true) {
      if (leadingTitle == null) {
        return AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(title,
              style: titleTextStyle ??
                  AppStyle()
                      .titleMedium_35(color: AppTheme().colorTxtInvRegular)),
          backgroundColor: Colors.transparent, // 设置透明背景
          elevation: 0,
          leading: leading ??
              IconButton(
                icon: Image.asset(navBackImagePath ?? UIAssets.source!.navBack,
                    width: 24.w, height: 24.w), // 左侧为图片按钮
                onPressed: () {
                  if (onNavBack != null) {
                    onNavBack?.call();
                  } else {
                    context.pop();
                  }
                }, // 绑定点击事件
              ),
          actions: rightActions,
        );
      } else {
        return AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent, // 设置透明背景
          elevation: 0,
          leading: null,
          title: leadingTitle,
          actions: rightActions,
        );
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar, // 设置 body 是否延伸到导航栏后面
      backgroundColor: AppTheme().roundContainerColor,
      appBar: _buildAppBar(context),
      body: backgroundColor == null
          ? Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(UIAssets.source!.bg2),
                      fit: BoxFit.fill, // 让图片覆盖整个容器
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundPath ?? UIAssets.source!.bg1),
                      fit: BoxFit.fill, // 让图片覆盖整个容器
                    ),
                  ),
                  child: isSafeArea == true
                      ? SafeArea(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                right: 0,
                                bottom: 0,
                                child: child,
                              )
                            ],
                          ),
                        )
                      : Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: child,
                            )
                          ],
                        ),
                ),
              ],
            )
          : Container(
              color: backgroundColor,
              child: isSafeArea == true
                  ? SafeArea(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            right: 0,
                            bottom: 0,
                            child: child,
                          )
                        ],
                      ),
                    )
                  : Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: child,
                        )
                      ],
                    ),
            ),
    );
  }
}
