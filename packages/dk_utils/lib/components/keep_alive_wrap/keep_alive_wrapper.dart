import 'dart:async';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MeasurableWidget extends SingleChildRenderObjectWidget {
  const MeasurableWidget(
      {super.key, required this.onChange, required Widget super.child});
  final void Function(Size size) onChange;
  @override
  RenderObject createRenderObject(BuildContext context) =>
      MeasureSizeRenderObject(onChange);
}

class MeasureSizeRenderObject extends RenderProxyBox {
  MeasureSizeRenderObject(this.onChange);
  void Function(Size size) onChange;

  Size _prevSize = Size.zero;
  @override
  void performLayout() {
    super.performLayout();
    Size newSize = child?.size ?? Size.zero;
    if (_prevSize == newSize) return;
    _prevSize = newSize;
    scheduleMicrotask(() => onChange(newSize));
  }
}

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    super.key,
    this.keepAlive = true,
    required this.child,
  });
  final bool keepAlive;
  final Widget child;

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RepaintBoundary(
      child: widget.child,
    );
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      // keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
