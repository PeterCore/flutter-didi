import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class SignInUpContainer extends StatelessWidget {
  const SignInUpContainer({super.key, required this.child, this.top});
  final Widget child;
  final double? top;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: AppTheme().themeBackGroundColor,
          // image: DecorationImage(
          //   image: AssetImage(UIAssets.source!.bg2),
          //   fit: BoxFit.cover, // 让图片覆盖整个容器
          // ),
        ),
        child: Stack(
          children: [
            // Positioned(
            //   left: 0,
            //   top: 166.3.h + 59.16.h,
            //   right: 0,
            //   child: AppLocalImage(
            //     path: UIAssets.source!.waterBg,
            //   ),
            // ),
            Positioned(
              left: 0,
              top: top ?? 83.0.h,
              right: 0,
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
