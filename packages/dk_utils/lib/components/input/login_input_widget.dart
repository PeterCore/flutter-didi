import 'package:dk_utils/components/app_common_widget.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_normal_input.dart';

class LoginInputWidget extends StatelessWidget {
  static final double _textHeight = 23.h;
  static final double _sizePadding = 4.h;
  static final double _marginTop = 4.h;
  static final double _inputHeight = 46.h;

  static double height = _textHeight + _marginTop + _sizePadding + _inputHeight;

  const LoginInputWidget(
      {super.key,
      required this.title,
      this.rightTitle,
      required this.placeholder,
      this.focusNode,
      this.onClickRight,
      this.isShowEye = false,
      required this.controller,
      this.inputFormatters});

  final String title;
  final String? rightTitle;
  final String placeholder;
  final FocusNode? focusNode;
  final Function? onClickRight;
  final bool isShowEye;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      margin: EdgeInsets.only(top: _marginTop),
      height: height,
      children: [
        AppRow(
          height: _textHeight,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyle()
                  .bodyRegular_14(color: AppTheme().colorTxtDefRegular),
            ),
            if (rightTitle?.isNotEmpty == true)
              AppContainer(
                onTap: () {
                  if (onClickRight != null) {
                    onClickRight!();
                  }
                },
                child: Text(
                  rightTitle ?? "",
                  style: AppStyle()
                      .bodyRegular_14(color: AppTheme().colorPrimaryBrand),
                ),
              )
          ],
        ),
        SizedBox(
          height: _sizePadding,
        ),
        AppNormalInput(
          height: _inputHeight,
          backgroundColor: AppTheme().colorFillBgGrey,
          placeHolder: placeholder,
          inputFormatters: inputFormatters,
          controller: controller,
          isShowEye: isShowEye,
          focusNode: focusNode,
        )
      ],
    );
  }
}
