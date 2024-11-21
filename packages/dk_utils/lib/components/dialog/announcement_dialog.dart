import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import 'mm_dialog/mm_dialog.dart';
import 'mm_dialog/mm_dialog_manager.dart';

class AnnouncementDialog extends StatelessWidget {
  static void showADialog(BuildContext context,
      {String content = "", bool isHtml = false}) {
    showAnimatedDialog(context,
        backgroundColor: Colors.transparent,
        child: AnnouncementDialog(
          content: content,
          isHtml: isHtml,
        ));
  }

  static void closeDialog(BuildContext context) {
    DialogManager().closeDialogWithAnimation(context);
  }

  const AnnouncementDialog(
      {super.key, required this.content, this.isHtml = false});
  final String content;
  final bool isHtml;
  @override
  Widget build(BuildContext context) {
    const AssetImage bg =
        AssetImage("assets/images/dialog_bg.png", package: "dk_utils");
    const AssetImage top =
        AssetImage("assets/images/dialog_top.png", package: "dk_utils");
    precacheImage(bg, context);
    precacheImage(top, context);
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: bg,
          fit: BoxFit.cover, // 让图片覆盖整个容器
        ),
        borderRadius: BorderRadius.circular(15.r), // 圆角边框
      ),
      child: Stack(
        clipBehavior: Clip.none, // 允许图片超出圆角矩形范围
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: -40.h,
              child: Image(
                image: top,
                width: 105.w,
                height: 105.h,
              )),
          Positioned(
              left: 0,
              right: 0,
              top: 60.h,
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    if (isHtml)
                      HtmlWidget(
                        content,
                        renderMode: RenderMode.column,
                        customWidgetBuilder: (element) {
                          if (element.parentNode != null &&
                              element.parentNode!.nodes != null) {
                            if (element.parentNode!.nodes.isNotEmpty) {
                              final nodesEle = element.parentNode!.nodes.last;
                              final nodes = nodesEle.nodes[0];
                              if (nodes.attributes["src"] != null) {
                                return Container(
                                  height: 0,
                                );
                              }
                            }
                          }
                          return null;
                        },
                      ),
                    if (isHtml != true)
                      Text(
                        content,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            height: 1.2,
                            color: AppTheme().wordPrimaryColor),
                      ),
                    SizedBox(
                      height: 24.h,
                    ),
                    GradientButton(
                        text: "我知道了",
                        onPressed: (index) {
                          DialogManager().closeDialogWithAnimation(context);
                        }),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
