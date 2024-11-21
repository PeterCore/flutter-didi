import 'package:dk_utils/components/app_local_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../assets_tool/ui_assets.dart';

class UserTagView extends StatelessWidget {
  const UserTagView(
      {super.key,
      this.content,
      this.iconColor = const Color(0xFFFFCC90),
      this.textColor = const Color(0xFFFFCC90),
      this.isVip = true});
  final String? content;
  final Color? iconColor;
  final Color? textColor;
  final bool isVip;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.white, Colors.white],
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isVip)
            AppLocalImage(
              path: UIAssets.source!.vip,
              width: 12.sp,
              height: 12.sp,
            ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            content ?? "",
            style: TextStyle(
                color: textColor,
                fontSize: 12.sp,
                height: 1,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            Icons.help_outline_rounded,
            color: iconColor,
            size: 12.sp,
          )
        ],
      ),
    );
  }
}
