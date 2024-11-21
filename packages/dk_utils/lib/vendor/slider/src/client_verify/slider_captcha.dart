import 'package:dk_utils/vendor/slider/src/client_verify/slider_captcha_render.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_theme.dart';
import '../../../../utils/platform_utils.dart';

class SliderController {
  late Offset? Function() create;
}

class SliderCaptcha extends StatefulWidget {
  const SliderCaptcha({
    required this.image,
    required this.onConfirm,
    this.title = 'Slide to authenticate',
    this.titleStyle,
    this.captchaSize = 50,
    this.colorBar = Colors.red,
    this.colorCaptChar = Colors.transparent,
    this.controller,
    this.borderImager = 0,
    this.imageToBarPadding = 0,
    this.slideContainerDecoration,
    this.icon,
    this.answerY = 0,
    this.answerX = 0,
    super.key,
  });

  final double answerX;
  final double answerY;

  final Widget image;

  final Future<void> Function(bool value, double offsetX)? onConfirm;

  final String title;

  final TextStyle? titleStyle;

  final Color colorBar;

  final Color colorCaptChar;

  final double captchaSize;

  final Widget? icon;

  /// Allows the dev to customize slideContainer if specified.
  final Decoration? slideContainerDecoration;

  final SliderController? controller;

  /// Adds space between the captcha image and the slide button bar.
  /// Defaults is 0
  final double imageToBarPadding;

  /// to make sure no problems arise, borderImage only allows sheet limit 0 -> 5
  final double borderImager;

  @override
  State<SliderCaptcha> createState() => _SliderCaptchaState();
}

class _SliderCaptchaState extends State<SliderCaptcha>
    with SingleTickerProviderStateMixin {
  double heightSliderBar = 40;

  double _offsetMove = 0;

  double answerX = 0;

  double answerY = 0;

  /// Khi [confirm] đang thực thiện thì lock =true -> Không cho controller trược
  /// nữa
  bool isLock = false;

  late SliderController controller;
  late final SliderController _controller = SliderController();

  late Animation<double> animation;

  late AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderImager),
          child: SliderCaptCha(
            createX: answerX,
            widget.image,
            _offsetMove,
            answerY,
            sizeCaptChar: widget.captchaSize,
            colorCaptChar: widget.colorCaptChar,
            sliderController: _controller,
          ),
        ),
        SizedBox(height: widget.imageToBarPadding),
        //slider bar
        Container(
          padding: const EdgeInsets.only(left: 6),
          height: heightSliderBar,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppTheme().radiusRound),
            color: widget.colorBar,
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: Text(
                  widget.title,
                  style: widget.titleStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: _offsetMove,
                top: 2,
                child: GestureDetector(
                  onHorizontalDragStart: (detail) =>
                      _onDragStart(context, detail),
                  onHorizontalDragUpdate: (DragUpdateDetails detail) {
                    _onDragUpdate(context, detail);
                  },
                  onHorizontalDragEnd: (DragEndDetails detail) {
                    checkAnswer();
                  },
                  child: SizedBox(
                    height: heightSliderBar - 5,
                    width: heightSliderBar - 5,
                    child:
                        widget.icon ?? const Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _onDragStart(BuildContext context, DragStartDetails start) {
    if (isLock) return;
    RenderBox getBox = context.findRenderObject() as RenderBox;

    var local = getBox.globalToLocal(start.globalPosition);

    setState(() {
      _offsetMove = local.dx - heightSliderBar / 2;
    });
  }

  _onDragUpdate(BuildContext context, DragUpdateDetails update) {
    if (isLock) return;
    RenderBox getBox = context.findRenderObject() as RenderBox;
    var local = getBox.globalToLocal(update.globalPosition);

    if (local.dx < 0) {
      _offsetMove = 0;
      setState(() {});
      return;
    }

    if (local.dx > getBox.size.width) {
      _offsetMove = getBox.size.width - heightSliderBar;
      setState(() {});
      return;
    }
    if (local.dx - heightSliderBar / 2 < 0) {
      _offsetMove = 0;
      setState(() {});
      return;
    }
    setState(() {
      _offsetMove = local.dx - heightSliderBar / 2;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      controller = SliderController();
    } else {
      controller = widget.controller!;
    }

    answerY = widget.answerY;
    answerX = widget.answerX;
    controller.create = create;

    animationController = AnimationController(
      duration: Duration(milliseconds: PlatformUtils.isIOS ? 35 : 200),
      vsync: this,
    );

    animation = Tween<double>(begin: 1, end: 0).animate(animationController)
      ..addListener(() {
        setState(() {
          _offsetMove = _offsetMove * animation.value;
        });
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reset();
        }
      });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  WidgetsBinding? _widgetsBinding() => WidgetsBinding.instance;

  @override
  void didChangeDependencies() {
    _widgetsBinding()?.addPostFrameCallback((timeStamp) {
      controller.create.call();
    });
    super.didChangeDependencies();
  }

  void onUpdate(double d) {
    setState(() {
      _offsetMove = d;
    });
  }

  Future<void> checkAnswer() async {
    if (isLock) return;
    isLock = true;

    if (_offsetMove < answerX + 10 && _offsetMove > answerX - 10) {
      await widget.onConfirm!(true, _offsetMove);
    } else {
      await widget.onConfirm!(false, _offsetMove);
    }
    isLock = false;
  }

  Offset? create() {
    animationController.forward().then((value) {
      Offset? offset = _controller.create.call();
      answerX = offset?.dx ?? 0;
      answerY = offset?.dy ?? 0;
      animationController.duration = const Duration(milliseconds: 30);
    });
    return null;
  }
}
