import 'dart:async';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final DateTime endTime;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Duration refreshInterval;

  const CountdownTimer({
    super.key,
    required this.endTime,
    this.textStyle,
    this.backgroundColor = Colors.transparent,
    this.refreshInterval = const Duration(seconds: 1),
  });

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  late Duration _remainingTime;

  @override
  void initState() {
    super.initState();
    _remainingTime = widget.endTime.difference(DateTime.now());
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(widget.refreshInterval, (timer) {
      setState(() {
        _remainingTime = widget.endTime.difference(DateTime.now());

        if (_remainingTime.isNegative) {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String days = twoDigits(duration.inDays);
    String hours = twoDigits(duration.inHours.remainder(24));
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$days天$hours小时$minutes分$seconds秒";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: widget.backgroundColor,
      child: Text(
        _formatDuration(_remainingTime),
        style: widget.textStyle ??
            TextStyle(
              fontSize: 14.sp,
              color: Colors.white,
            ),
      ),
    );
  }
}
