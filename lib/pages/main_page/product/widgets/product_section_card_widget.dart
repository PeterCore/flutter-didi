import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductSectionCardWidget extends StatelessWidget {
  final String? title;
  final Widget content;
  final Widget? trailing;
  const ProductSectionCardWidget(
      {super.key, this.title, required this.content, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom:  8.h),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (title != null)
                        Text(
                          title!,
                          style: TextStyle(
                            color: const Color(0xFF15141C),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      if (trailing != null) trailing!,
                    ],
                  ),
                ),
                if (title != null || trailing != null) SizedBox(height: 10.h),
                content,
              ],
            ),
          ),
        ));
  }
}
