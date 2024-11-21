import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';

enum PopupAnimationType { scale, bottom, left, fade }

class DialogRouter<T> extends PageRouteBuilder<T> {
  final Widget page;
  final PopupAnimationType? type;
  DialogRouter(this.page, {this.type})
      : super(
            opaque: false,
            barrierColor: AppTheme().wordSecondColor.withOpacity(0.5),
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              switch (type) {
                case PopupAnimationType.scale:
                  return _buildMaterialDialogScaleTransitions(
                      context, animation, secondaryAnimation, child);
                case PopupAnimationType.bottom:
                  return _buildMaterialDialogBottomTransitions(
                      context, animation, secondaryAnimation, child);
                case PopupAnimationType.left:
                  return _buildMaterialDialogLeftTransitions(
                      context, animation, secondaryAnimation, child);
                case PopupAnimationType.fade:
                  return _buildMaterialFadeTransitions(
                      context, animation, secondaryAnimation, child);
                default:
                  return child;
              }
            });
}

Widget _buildMaterialDialogLeftTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: child);
}

Widget _buildMaterialFadeTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return FadeTransition(
// 透明度从 0.0-1.0
    opacity: Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      ),
    ),
    child: child,
  );
}

Widget _buildMaterialDialogBottomTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: child);
}

Widget _buildMaterialDialogScaleTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  // 使用缩放动画
  return ScaleTransition(
    scale: Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      ),
    ),
    child: FadeTransition(
      opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.fastOutSlowIn,
        ),
      ),
      child: child,
    ),
  );
}

class DKDialog {
  static Future<String?> show<String>(BuildContext context, Widget child,
      {bool mateStyle = false, PopupAnimationType? type}) {
    return Navigator.of(context)
        .push<String>(DialogRouter(PopupDialog(child), type: type));
  }

  static void hide(BuildContext context, {String? result}) {
    Navigator.of(context).pop(result);
  }
}

class PopupDialog extends Dialog {
  const PopupDialog(this.children, {super.key});
  final Widget children;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PopScope(
      canPop: true,
      child: Material(
        type: MaterialType.transparency,
        child: children,
      ),
    );
  }
}
