import 'package:flutter/material.dart';

class DialogManager {
  // 创建单例
  static final DialogManager _instance = DialogManager._internal();
  factory DialogManager() => _instance;
  DialogManager._internal();

  // 定义用于动画的 AnimationController
  AnimationController? _controller;
  bool _isDialogOpen = false;

  // 设置动画控制器
  void setAnimationController(AnimationController controller) {
    _controller = controller;
  }

  // 判断弹窗是否打开
  bool isDialogOpen() {
    return _isDialogOpen;
  }

  // 标记弹窗为打开
  void openDialog() {
    _isDialogOpen = true;
  }

  // 调用此方法执行关闭动画并关闭弹窗
  Future<void> closeDialogWithAnimation(BuildContext context) async {
    if (_controller != null && _isDialogOpen) {
      Animation<double> scaleAnimation = Tween<double>(begin: 1.0, end: 2.0)
          .animate(
              CurvedAnimation(parent: _controller!, curve: Curves.easeOut));
      Animation<double> opacityAnimation = Tween<double>(begin: 1.0, end: 0.0)
          .animate(
              CurvedAnimation(parent: _controller!, curve: Curves.easeOut));

      await _controller?.reverse();
      if (context.mounted) {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop(); // 关闭弹窗
          _isDialogOpen = false; // 标记为关闭状态
        }
      }
    }
  }
}
