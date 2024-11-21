import 'package:dk_utils/components/dialog/mm_dialog/mm_dialog_manager.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/cupertino.dart';

import 'mm_dialog/mm_dialog.dart';

class WmmDialog extends StatelessWidget {
  static void showWMMDialog(BuildContext context,
      {String title = "", String content = "", String btnText = ""}) {
    showAnimatedDialog(context,
        child: WmmDialog(
          title: title,
          content: content,
          btnText: btnText,
        ));
  }

  static void closeDialog(BuildContext context) {
    DialogManager().closeDialogWithAnimation(context);
  }

  const WmmDialog({super.key, this.title, this.content, this.btnText = ""});
  final String? title;
  final String? content;
  final String? btnText;
  @override
  Widget build(BuildContext context) {
    TextStyle contentStyle = TextStyle(
        color: AppTheme().wordSecondColor,
        fontWeight: FontWeight.w400,
        height: 1.2,
        fontSize: 13.sp);
    TextStyle titleStyle = TextStyle(
        color: AppTheme().wordPrimaryColor,
        fontWeight: FontWeight.w700,
        height: 1.2,
        fontSize: 16.sp);

    // bool isbMaxLine = isTextSingleLine(content ?? "", context, width,
    //     style: contentStyle, maxLines: 14);
    return Padding(
      padding:
          EdgeInsets.only(left: 12.w, right: 12.w, top: 16.h, bottom: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? "",
            style: titleStyle,
          ),
          SizedBox(height: 12.h),
          Text(
            content ?? "",
            style: contentStyle,
          ),
          SizedBox(height: 12.h),
          GradientButton(
              text: btnText!.isEmpty ? "确认" : btnText!,
              onPressed: (index) {
                DialogManager().closeDialogWithAnimation(context);
              }),
        ],
      ),
    );
  }
}
