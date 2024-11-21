import 'package:dk_net_work/models/lottery_config_model.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class PrizeDialog extends StatelessWidget {
  const PrizeDialog({super.key, required this.prize});
  final LotteryPeizhi? prize;

  static void show(BuildContext context, {LotteryPeizhi? prize}) {
    DKDialog.show(
      type: PopupAnimationType.scale,
      context,
      PrizeDialog(
        prize: prize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: AppTheme().roundContainerColor,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 10.w,
                top: 10.w,
                bottom: 31.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 27.h,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              DKDialog.hide(context);
                            },
                            child: Icon(
                              Icons.close_outlined,
                              size: 22.w,
                              color: AppTheme().themeBackGroundColor,
                            )),
                      ],
                    ),
                  ),
                  netImageCached(
                    prize?.img ?? "",
                    width: 76.w,
                    height: 76.w,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '恭喜你抽中${prize?.prize ?? ""}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xFFA5561E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
