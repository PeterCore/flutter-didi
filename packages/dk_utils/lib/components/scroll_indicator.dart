import 'package:flutter/material.dart';

class StepController with ChangeNotifier {
  StepController(this.step);
  int step;

  void scrollStep(int step) {
    this.step = step;
    notifyListeners();
  }
}

class ScrollIndicator extends StatefulWidget {
  final double width, height;
  final Decoration decoration, indicatorDecoration;
  final AlignmentGeometry alignment;
  final int itemCount;
  StepController? controller;
  ScrollIndicator(
      {super.key,
      this.controller,
      this.width = 100,
      this.height = 10,
      this.itemCount = 1,
      this.decoration = const BoxDecoration(color: Colors.black26),
      this.indicatorDecoration = const BoxDecoration(color: Colors.white),
      this.alignment = Alignment.center});

  @override
  _ScrollIndicatorState createState() => _ScrollIndicatorState();
}

class _ScrollIndicatorState extends State<ScrollIndicator> {
  double currentPixels = 0.0;
  double mainContainer = 0.0;
  double move = 0.0;
  double indicatorWidth = 10;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    indicatorWidth = widget.width / widget.itemCount;
    if (widget.controller != null) {
      widget.controller!.addListener(() {
        _scrollWithStep(widget.controller!.step);
      });
    }

    super.initState();
  }

  void _scrollWithStep(int step) {
    setState(() {
      if (step == 0) {
        move = 0.0;
      } else {
        move = indicatorWidth * step;
      }
    });
  }

  void _scrollListener() {
    // setState(() {
    //   currentPixels = widget.scrollController.position.pixels;
    //   mainContainer =
    //       widget.scrollController.position.maxScrollExtent / widget.width;
    //   move = (currentPixels / mainContainer);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: widget.decoration,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
                left: move,
                child: Container(
                  height: widget.height,
                  width: indicatorWidth,
                  decoration: widget.indicatorDecoration,
                )),
          ],
        ),
      ),
    );
  }
}
