import 'package:dk_utils/components/dk_dialog.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/text_utils.dart';
import '../gradient_button.dart';

class ButtonProperty {
  final String text;
  final int index;
  final Color textColor;
  final List<Color> gradientColors;

  ButtonProperty(this.text, this.index, this.textColor, this.gradientColors);
}

class ZKDialog extends StatelessWidget {
  static void hide(BuildContext context) {
    DKDialog.hide(context);
  }

  static void show(
    BuildContext context, {
    String title = '',
    TextStyle? titleStyle,
    String content = '',
    TextStyle? contentStyle,
    List<ButtonProperty> buttonProperty = const [],
    bool isCloseButton = false,
    Function(int index)? onClick,
  }) {
    DKDialog.show(
      type: PopupAnimationType.scale,
      context,
      ZKDialog(
        title: title,
        titleTextStyle: titleStyle,
        content: content,
        contentTextStyle: contentStyle,
        buttonProperty: buttonProperty,
        isCloseButton: isCloseButton,
        onClick: onClick,
      ),
    );
  }

  const ZKDialog({
    super.key,
    this.title,
    this.content,
    this.buttonProperty,
    this.isCloseButton,
    this.onClick,
    this.titleTextStyle = const TextStyle(
        fontSize: 8,
        height: 1.3,
        fontWeight: FontWeight.w500,
        color: Colors.white),
    this.contentTextStyle = const TextStyle(
        fontSize: 8,
        height: 1.3,
        fontWeight: FontWeight.w400,
        color: Colors.white),
  });
  final String? title;
  final TextStyle? titleTextStyle;
  final String? content;
  final TextStyle? contentTextStyle;

  final List<ButtonProperty>? buttonProperty;
  final bool? isCloseButton;
  final Function(int index)? onClick;

  ///
  List<Widget> _buildButtonList(BuildContext context,
      {Function(int index)? onClick}) {
    List<Widget> widgets = [];
    if (buttonProperty != null || buttonProperty!.isNotEmpty) {
      widgets.add(SizedBox(
        height: 9.h,
      ));
      for (int i = 0; i < buttonProperty!.length; i++) {
        widgets.add(SizedBox(
          height: 15.h,
        ));
        GradientButton button = GradientButton(
          text: buttonProperty![i].text,
          index: i,
          textColor: buttonProperty![i].textColor,
          gradientColors: buttonProperty![i].gradientColors,
          onPressed: (int index) {
            onClick?.call(index);
            DKDialog.hide(context);
          },
        );
        widgets.add(button);
      }
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 28.w,
          child: Card(
              clipBehavior: Clip.antiAlias,
              color: AppTheme().roundContainerColor,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: isCloseButton == true
                    ? EdgeInsets.only(
                        left: 24.w,
                        right: 10.w,
                        top: 10.w,
                        bottom: 31.h,
                      )
                    : EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  children: [
                    isCloseButton == true
                        ? SizedBox(
                            height: 27.h,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      DKDialog.hide(context);
                                    },
                                    child: Icon(
                                      Icons.close_outlined,
                                      size: 22.w,
                                      color: AppTheme().themeBackGroundColor,
                                    )),
                              ],
                            ),
                          )
                        : Container(),
                    (title == null || title!.isEmpty)
                        ? Container()
                        : Text(
                            title ?? "",
                            textAlign: TextAlign.center,
                            style: titleTextStyle,
                          ),
                    SizedBox(
                      height: 12.h,
                    ),
                    (content == null || content!.isEmpty)
                        ? Container()
                        : LayoutBuilder(builder: (context, constraints) {
                            return Text(
                              content ?? "",
                              textAlign: isTextSingleLine(
                                content ?? "",
                                context,
                                constraints.maxWidth,
                                style: contentTextStyle,
                              )
                                  ? TextAlign.center
                                  : TextAlign.left,
                              style: contentTextStyle,
                            );
                          }),
                    ..._buildButtonList(context, onClick: (index) {
                      onClick?.call(index);
                    }),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
