import 'dart:math';

import 'package:dk_utils/vendor/slider/src/client_verify/slider_captcha.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../pizzule_path.dart';

typedef SliderCreate = Offset? Function();

class SliderCaptCha extends SingleChildRenderObjectWidget {
  ///Hình ảnh góc
  final Widget image;

  /// Vị trí dx slider captChar
  final double offsetX;

  /// Vị trí dy slider captChar
  final double offsetY;

  /// Màu sắt của captchar
  final Color colorCaptChar;

  final double createX;

  /// Kích thước của captchar
  final double sizeCaptChar;

  final SliderController sliderController;

  const SliderCaptCha(
    this.image,
    this.offsetX,
    this.offsetY, {
    this.sizeCaptChar = 40,
    this.createX = 0,
    this.colorCaptChar = Colors.transparent,
    required this.sliderController,
    super.key,
  }) : super(child: image);

  @override
  RenderObject createRenderObject(BuildContext context) {
    final renderObject = _RenderTestSliderCaptChar();
    renderObject.offsetX = offsetX;
    renderObject.offsetY = offsetY;
    renderObject.colorCaptChar = colorCaptChar;
    renderObject.sizeCaptChar = sizeCaptChar;
    renderObject.colorCaptChar = colorCaptChar;
    renderObject.createX = createX;
    sliderController.create = renderObject.create;
    return renderObject;
  }

  // //
  @override
  void updateRenderObject(context, _RenderTestSliderCaptChar renderObject) {
    renderObject.offsetX = offsetX;
    renderObject.offsetY = offsetY;
    renderObject.colorCaptChar = colorCaptChar;
    renderObject.sizeCaptChar = sizeCaptChar;
    renderObject.colorCaptChar = colorCaptChar;
    renderObject.createX = createX;

    super.updateRenderObject(context, renderObject);
  }
}

class _RenderTestSliderCaptChar extends RenderProxyBox {
  /// Kích thước của khối bloc
  double sizeCaptChar = 40;

  /// Kích thước của viền ngoài khối block
  double strokeWidth = 0.5;

  /// Vị trí đỉnh [dx] của puzzle block
  double offsetX = 0;

  /// Vị trí đỉnh [dy] của puzzle block
  double offsetY = 0;

  /// kết quả: dx
  double createX = 0;

  /// kết quả: dy
  double createY = 0;

  /// màu sắc của khối bloc
  Color colorCaptChar = Colors.black;

  Paint myPaint = Paint();

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;
    // Vẽ hình background.
    super.paint(context, offset);
    // context.paintChild(child!, offset);

    // Khử trường hợp ảnh bị giật khi sử dụng WidgetsBinding.instance.addPostFrameCallback
    if (!(child!.size.width > 0 && child!.size.height > 0)) {
      return;
    }
    myPaint
      ..color = colorCaptChar
      ..strokeWidth = strokeWidth;

    if (createX == 0 && createY == 0) return;
    // 定义第一个正方形的边界
    Rect rect1 = Rect.fromLTWH(
      offset.dx + createX.toDouble(),
      offset.dy + createY.toDouble(),
      sizeCaptChar,
      sizeCaptChar,
    );

    // 定义第二个正方形的边界
    Rect rect2 = Rect.fromLTWH(
      offset.dx + offsetX,
      offset.dy + createY,
      sizeCaptChar,
      sizeCaptChar,
    );

    // 绘制填充的正方形
    context.canvas.drawRect(
      rect1,
      myPaint..style = PaintingStyle.fill,
    );

    // 绘制边框的正方形
    context.canvas.drawRect(
      rect2,
      myPaint..style = PaintingStyle.stroke,
    );

    layer = context.pushClipPath(
      needsCompositing,

      /// Move về đầu [-create] và trược theo offsetX
      Offset(-createX + offsetX + offset.dx + strokeWidth, offset.dy),
      Offset.zero & size,
      getRectPathCustom(
        size,
        createX,
        createY.toDouble(),
        sizeCaptChar,
      ),
      (context, offset) {
        context.paintChild(child!, offset);
      },
      oldLayer: layer as ClipPathLayer?,
    );
  }

  // @override
  // void paint(PaintingContext context, Offset offset) {
  //   if (child == null) return;
  //
  //   /// Vẽ hình background.
  //   context.paintChild(child!, offset);
  //
  //   /// Khử trường hợp ảnh bị giật khi sử dụng WidgetsBinding.instance.addPostFrameCallback
  //   if (!(child!.size.width > 0 && child!.size.height > 0)) {
  //     return;
  //   }
  //
  //   Paint paint = Paint()
  //     ..color = colorCaptChar
  //     ..strokeWidth = strokeWidth;
  //
  //   if (createX == 0 && createY == 0) return;
  //
  //   context.canvas.drawPath(
  //     getPiecePathCustom(
  //       size,
  //       strokeWidth + offset.dx + createX.toDouble(),
  //       offset.dy + createY.toDouble(),
  //       sizeCaptChar,
  //     ),
  //     paint..style = PaintingStyle.fill,
  //   );
  //
  //   context.canvas.drawPath(
  //     getPiecePathCustom(
  //       Size(size.width - strokeWidth, size.height - strokeWidth),
  //       strokeWidth + offset.dx + offsetX,
  //       offset.dy + createY,
  //       sizeCaptChar,
  //     ),
  //     paint..style = PaintingStyle.stroke,
  //   );
  //
  //   layer = context.pushClipPath(
  //     needsCompositing,
  //
  //     /// Move về đầu [-create] và trược theo offsetX
  //     Offset(-createX + offsetX + offset.dx + strokeWidth, offset.dy),
  //     Offset.zero & size,
  //     getPiecePathCustom(
  //       size,
  //       createX,
  //       createY.toDouble(),
  //       sizeCaptChar,
  //     ),
  //     (context, offset) {
  //       context.paintChild(child!, offset);
  //     },
  //     oldLayer: layer as ClipPathLayer?,
  //   );
  // }

  @override
  void performLayout() {
    super.performLayout();
  }

  /// Hàm khởi tạo kết quả của khối bloc
  Offset? create() {
    if (size == Size.zero) {
      return null;
    }
    if (createX == 0) {
      createX = sizeCaptChar +
          Random().nextInt((size.width - 2.5 * sizeCaptChar).toInt());
    }

    createY = 0.0 + Random().nextInt((size.height - sizeCaptChar).toInt());

    markNeedsPaint();

    return Offset(createX, createY);
  }
}
