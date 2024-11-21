// 自定义弹框组件
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class AlterDialog extends StatefulWidget {
  final String title;
  final String content;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;

  const AlterDialog({
    super.key,
    required this.title,
    required this.content,
    this.onCancel,
    this.onConfirm,
  });

  @override
  _AlterDialogState createState() => _AlterDialogState();
}

class _AlterDialogState extends State<AlterDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Dialog(
          backgroundColor: AppTheme().roundContainerColor, // 深蓝色背景
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppTheme().wordPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.content,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme().wordSecondColor,
                      ),
                    ),
                  ],
                ),
              ),
              // 水平分割线延伸到边框
              Divider(
                color: AppTheme().dividerLineColor,
                thickness: 1,
                height: 1, // 避免分割线占用过多空间
              ),
              Row(
                children: _buildButtons(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildButtons() {
    final buttons = <Widget>[];

    if (widget.onCancel != null) {
      buttons.add(Expanded(
        child: _buildButton(
          '取消',
          widget.onCancel!,
          AppTheme().wordPrimaryColor, // 取消按钮文字颜色
        ),
      ));
    }

    if (widget.onConfirm != null) {
      if (buttons.isNotEmpty) {
        buttons.add(Container(
          width: 1.0, // 设置分割线宽度
          height: 50, // 保持与按钮高度一致
          color: AppTheme().dividerLineColor, // 分割线颜色
        ));
      }
      buttons.add(Expanded(
        child: _buildButton(
          '确定',
          widget.onConfirm!,
          AppTheme().themeBackGroundColor, // 确定按钮的文字颜色
        ),
      ));
    }

    return buttons;
  }

  Widget _buildButton(String label, VoidCallback onPressed, Color textColor) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15), // 按钮高度
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: textColor,
        ),
      ),
    );
  }
}

void showCustomDialog({
  required BuildContext context,
  required String title,
  required String content,
  VoidCallback? onCancel,
  VoidCallback? onConfirm,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlterDialog(
        title: title,
        content: content,
        onCancel: onCancel,
        onConfirm: onConfirm,
      );
    },
  );
}
