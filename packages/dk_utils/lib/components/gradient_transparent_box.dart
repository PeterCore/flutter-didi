import 'package:flutter/cupertino.dart';

import 'gradient_box_border.dart';

class GradientTransparentBox extends StatelessWidget {
  const GradientTransparentBox(
      {super.key,
      this.bgGradientColor,
      this.borderGradientColor,
      this.borderWidth,
      this.child,
      this.padding});
  final List<Color>? bgGradientColor;
  final List<Color>? borderGradientColor;
  final double? borderWidth;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: bgGradientColor ??
              [
                const Color(0xFF609BA6).withOpacity(0.15),
                const Color(0xFF298AB5).withOpacity(0.06),
                const Color(0xFF0D8AD9).withOpacity(0.15),
              ],
        ),
        borderRadius: BorderRadius.circular(20), // 圆角效果
        border: GradientBoxBorder(
          gradient: LinearGradient(
              transform: const GradientRotation(90 * 3.1416 / 180), // 旋转 45 度

              begin: Alignment.topRight,
              end: Alignment.centerLeft,
              colors: borderGradientColor ??
                  [
                    const Color(0xFF47699B),
                    const Color(0xFF56A0A2),
                    const Color(0xFF629DA0).withOpacity(0.15),
                    const Color(0xFF638B8D).withOpacity(0.15),
                    const Color(0xFF5290A0),
                    const Color(0xFF47699B),
                  ]),
          width: borderWidth ?? 0.5,
        ),
      ),
      child: child,
    );
  }
}
