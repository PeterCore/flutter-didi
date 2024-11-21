import 'package:flutter/material.dart';

class ConfirmationDialog {
  static Future<bool?> show({
    required BuildContext context,
    String title = '确认操作',
    String content = '您确定要执行此操作吗？',
    String confirmText = '确认',
    String cancelText = '取消',
    Function? onConfirm,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false, // 点击弹窗外不可关闭
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(content, style: const TextStyle(color: Colors.white, fontSize: 14,), textAlign: TextAlign.left,),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(cancelText, style: const TextStyle(color: Colors.white, fontSize: 14,),),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: Text(confirmText, style: const TextStyle(fontSize: 14,),),
              onPressed: () {
                onConfirm?.call();
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
  }
}
