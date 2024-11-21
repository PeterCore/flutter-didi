import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScreenShotPad extends StatefulWidget {
  const ScreenShotPad({super.key, this.child});
  final Widget? child;
  @override
  ScreenShotState createState() => ScreenShotState();
}

class ScreenShotState extends State<ScreenShotPad> {
  late double width = 400;
  late double height = 400;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }

  Future<ui.Image> toImage({double pixelRatio = 1.0}) {
    RenderRepaintBoundary boundary =
        context.findRenderObject() as RenderRepaintBoundary;
    return boundary.toImage(pixelRatio: pixelRatio);
  }
}
