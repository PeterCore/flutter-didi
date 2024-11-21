import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../components/image/net_image_cached.dart';

class DkLotteryWidget extends StatefulWidget {
  final DKLotteryController? controller;

  const DkLotteryWidget({super.key, this.controller});
  @override
  State<DkLotteryWidget> createState() => _DkLotteryWidgetState();
}

class _DkLotteryWidgetState extends State<DkLotteryWidget>
    with SingleTickerProviderStateMixin {
  int currentIndex = -1; // 当前高亮的格子
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.controller?.onCurrentIndex = _updateSelectIndex;
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.controller?.dispose();
    super.dispose();
  }

  void _updateSelectIndex(int index) {
    if (mounted) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - (2 * 87.w);
    return Container(
        color: Colors.transparent,
        width: width,
        height: width,
        child: GridView.builder(
            itemCount: widget.controller?.prizes?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
            itemBuilder: (context, index) {
              bool isHighlighted = false;
              if (currentIndex != -1) {
                isHighlighted =
                    widget.controller?.rotationOrder[currentIndex] == index;
              }

              return Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                      width: 56.w,
                      height: 56.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            color: isHighlighted && index != 4
                                ? AppTheme().themeBackGroundColor
                                : const Color(0xFFEDA9FF),
                            width: 2.w),
                      ),
                      child: index != 4
                          ? netImageCached(
                              widget.controller?.prizes?[index] ?? "",
                              radius: 0,
                            )
                          : Container()),
                  // Image.asset(_rewardsList[_reverseSelectMap[index]!]),
                ],
              );
            }));
  }
}
