import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class NmDialog extends StatelessWidget {
  const NmDialog({super.key, this.title, this.content});
  final String? title;
  final String? content;
  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyle(
        color: AppTheme().wordPrimaryColor,
        fontWeight: FontWeight.w700,
        height: 1.2,
        fontSize: 16.sp);

    return Stack(
      children: [],
    );
  }
}
