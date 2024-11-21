import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class NewDetailWidget extends StatelessWidget {
  const NewDetailWidget({super.key, this.content});
  final String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: SingleChildScrollView(
        child: HtmlWidget(content ?? ""),
      ),
    );
  }
}
