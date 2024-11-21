import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import 'mm_dialog_manager.dart';

class MmDialog extends StatefulWidget {
  const MmDialog({super.key, this.child, this.backgroundColor});
  final Widget? child;
  final Color? backgroundColor;
  @override
  State<MmDialog> createState() => _MmDialogState();
}

class _MmDialogState extends State<MmDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    // 初始化 AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(begin: 1.2, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    // 开始弹窗出现动画
    _controller.forward();

    // 把 AnimationController 传递给 DialogManager
    DialogManager().setAnimationController(_controller);
    DialogManager().openDialog(); // 标记弹窗为打开状态
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await DialogManager().closeDialogWithAnimation(context);
        return false;
      },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          DialogManager().closeDialogWithAnimation(context);
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: GestureDetector(
              onTap: () {},
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: FadeTransition(
                  opacity: _opacityAnimation,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Dialog(
                        backgroundColor: widget.backgroundColor ??
                            AppTheme().roundContainerColor, // 深蓝色背景
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: widget.child),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showAnimatedDialog(BuildContext context,
    {Widget? child, Color? backgroundColor}) {
  showDialog(
    context: context,
    barrierDismissible: true, // 允许点击背景关闭弹窗
    builder: (context) => MmDialog(
      backgroundColor: backgroundColor,
      child: child,
    ),
  );
}
