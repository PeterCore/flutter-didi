import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DKInputField extends StatefulWidget {
  const DKInputField(
      {super.key,
      this.inputFormatters,
      this.isObscure,
      this.prefixWidth,
      this.prefixLabel,
      this.hintText,
      this.backgroundColor,
      this.borderRadius,
      this.style,
      this.prefixIcon,
      this.edgeInsets,
      this.cursorColor,
      this.iconColor,
      this.controller,
      this.onSubmitted,
      this.onChanged});
  final List<TextInputFormatter>? inputFormatters;
  final bool? isObscure;
  final double? prefixWidth;
  final double? borderRadius;
  final String? prefixLabel;
  final String? hintText;
  final TextStyle? style;
  final Color? cursorColor;
  final Widget? prefixIcon;
  final EdgeInsets? edgeInsets;
  final Color? backgroundColor;
  final Color? iconColor;
  final TextEditingController? controller;
  final Function(String value)? onSubmitted;
  final Function(String value)? onChanged;
  @override
  State<DKInputField> createState() => _DKInputFieldState();
}

class _DKInputFieldState extends State<DKInputField> {
  bool _isObscure = false; // 控制密码是否隐藏

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isObscure = widget.isObscure ?? false;
  }

  Widget _buildObscureWidget() {
    if (widget.isObscure == true) {
      return IconButton(
        icon: Icon(
          size: 20,
          _isObscure
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined, // 图标根据状态切换
          color: widget.iconColor ?? Colors.white.withOpacity(0.7),
        ),
        onPressed: () {
          setState(() {
            _isObscure = !_isObscure; // 切换密码显示/隐藏
          });
        },
      );
    }
    return const SizedBox(
      width: 6,
      height: 6,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.edgeInsets ?? EdgeInsets.only(left: 5.w),
      decoration: BoxDecoration(
        color: widget.backgroundColor ??
            const Color(0xFF101010).withOpacity(0.8), // 背景透明度
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 10), // 圆角
        border: Border.all(
          color: Colors.white.withOpacity(0.0), // 边框颜色和透明度
          width: 1.5,
        ),
      ),
      child: TextField(
        onSubmitted: (value) {
          widget.onSubmitted?.call(value);
        },
        onChanged: (value) {
          widget.onChanged?.call(value);
        },
        controller: widget.controller,
        inputFormatters: widget.inputFormatters, // 控制输入内容的上下内边距
        obscureText: _isObscure, // 是否隐藏输入的文本
        style: widget.style ??
            AppStyle().headlineRegular_28(
                color: AppTheme().wordPrimaryColor), // 输入的字体颜色
        cursorColor: widget.cursorColor ?? Colors.white, // 光标颜色
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            prefixIcon: widget.prefixIcon ??
                SizedBox(
                  width: widget.prefixWidth ?? 25.w, // 控制前缀文本区域宽度
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.prefixLabel ?? '',
                          style: AppStyle().headlineRegular_28(
                              color: AppTheme().wordPrimaryColor)),
                    ],
                  ),
                ),
            hintText: widget.hintText,
            hintStyle:
                AppStyle().headlineRegular_28(color: Colors.grey), // 提示文本字体颜色
            border: InputBorder.none, // 去除默认边框

            // contentPadding: const EdgeInsets.symmetric(vertical: 10),
            suffixIcon: _buildObscureWidget()),
      ),
    );
  }
}
