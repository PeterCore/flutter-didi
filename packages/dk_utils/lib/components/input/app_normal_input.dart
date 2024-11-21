// ignore_for_file: must_be_immutable

// import 'package:commontl/app_core.dart';
// import 'package:commontl/base/utils/screen_utils.dart';
// import 'package:commontl/widgets/common/app_common_widget.dart';
// import 'package:commontl/widgets/image/app_local_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/app_style.dart';
import '../app_common_widget.dart';
import '../app_local_image.dart';

///普通输入框
class AppNormalInput extends StatefulWidget {
  const AppNormalInput(
      {super.key,
      required this.height,
      required this.placeHolder,
      this.backgroundColor,
      this.enabled = true,
      this.placeHolderColor,
      this.textColor,
      this.onChanged,
      this.inputFormatters,
      this.maxLength,
      this.keyboardType,
      this.isShowEye = false,
      this.fontSize,
      this.controller,
      this.onClickEye,
      this.paddingLeft,
      this.paddingRight,
      this.focusNode,
      this.radius,
      this.autofocus = false,
      this.onSubmitted,
      this.textAlign,
      this.counter,
      this.eyeColor,
      this.textInputAction,
      this.textStyle,
      this.hintStyle});

  //背景颜色
  final Color? backgroundColor;

  //占位颜色
  final Color? placeHolderColor;

  //文字颜色
  final Color? textColor;

  //是否可以输入
  final bool enabled;

  //左边间距
  final double? paddingLeft;

  //右边边间距
  final double? paddingRight;

  //圆角
  final double? radius;

  //高度
  final double height;

  //占位语
  final String placeHolder;

  //监听文字变化
  final ValueChanged<String>? onChanged;

  //点击密码
  final Function(bool isShow)? onClickEye;

  //拦截
  final List<TextInputFormatter>? inputFormatters;

  //是否显示眼睛
  final bool isShowEye;

  //最多长度
  final int? maxLength;

  final double? fontSize;

  //键盘类型
  final TextInputType? keyboardType;

  final TextAlign? textAlign;

  final FocusNode? focusNode;

  final bool autofocus;

  final ValueChanged<String>? onSubmitted;

  //控制器
  final TextEditingController? controller;

  final Widget? counter;

  //眼睛的颜色
  final Color? eyeColor;

  final TextInputAction? textInputAction;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  @override
  State<AppNormalInput> createState() => _AppNormalInputState();
}

class _AppNormalInputState extends State<AppNormalInput> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    if (widget.isShowEye) {
      obscureText = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular((widget.radius ?? 45.r)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: widget.paddingLeft ?? 16.w,
          ),
          Expanded(
              child: TextField(
            textAlign: widget.textAlign ?? TextAlign.start,
            onSubmitted: widget.onSubmitted,
            autofocus: widget.autofocus,
            enabled: widget.enabled,
            focusNode: widget.focusNode,
            cursorColor: Colors.white,
            controller: widget.controller,
            onChanged: (str) {
              if (widget.onChanged != null) {
                widget.onChanged!(str);
              }
            },
            maxLength: widget.maxLength,
            obscureText: obscureText,
            maxLines: 1,
            inputFormatters: widget.inputFormatters,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            textInputAction: widget.textInputAction,
            style: widget.textStyle ??
                AppStyle().bodyRegular_14(color: widget.textColor),
            decoration: AppStyle().inputDecoration(
                counter: widget.counter,
                hintText: widget.placeHolder,
                hintStyle: widget.hintStyle),
          )),
          _passWord(),
          SizedBox(
            width: widget.paddingRight ?? 10.w,
          ),
        ],
      ),
    );
  }

  Widget _passWord() {
    if (widget.isShowEye) {
      return AppContainer(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
            if (widget.onClickEye != null) {
              widget.onClickEye!(obscureText);
            }
          });
        },
        color: widget.backgroundColor,
        padding: EdgeInsets.only(right: 6.w),
        child: Center(
            child: obscureText
                ? AppLocalImage(
                    path: "assets/images/ic_eye_close.png",
                    width: 5.w,
                  )
                : AppLocalImage(
                    path: "assets/images/ic_eye_open.png",
                    width: 5.w,
                  )),
      );
    } else {
      return Container();
    }
  }
}
