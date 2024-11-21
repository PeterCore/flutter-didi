import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

class ArrowRightRoundContainer extends StatelessWidget {
  const ArrowRightRoundContainer(
      {super.key, this.textColor = Colors.white, this.text = "", this.onClick});
  final Color? textColor;
  final String? text;
  final Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        onClick?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.r),
          color: AppTheme().roundContainerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(text ?? "",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: textColor,
                      fontWeight: FontWeight.w400,
                      height: 1.2)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppTheme().wordSecondColor,
              size: 10.w,
            ), // 右侧箭头
          ],
        ),
      ),
    );
  }
}
