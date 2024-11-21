import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/mine/widgets/lottery/prize_dialog.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/lottery_config_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';
import '../../../../../vendor/scroll/marquee.dart';

class LotteryWidget extends StatefulWidget {
  const LotteryWidget({super.key});

  @override
  State<LotteryWidget> createState() => _LotteryWidgetState();
}

class _LotteryWidgetState extends State<LotteryWidget> {
  // late SimpleLotteryController simpleLotteryController;
  DKLotteryController controller = DKLotteryController();
  Map<int, int> lotteryMaps = {};
  List<LotteryPeizhi> configs = [];
  int selectIndex = 0;
  String rules = "";

  final ValueNotifier<int> remainCount = ValueNotifier<int>(0);
  final ValueNotifier<String> winPrizeTitle = ValueNotifier<String>("");

  void fetchLotteryResult({bool isClick = false}) {
    if (isClick == true) {
      EasyLoading.show();
    }
    getLotteryResult().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        final selectIndex = data.index ?? 6;
        if (isClick) {
          controller.startLottery(selectIndex);
        }
      });
      value.ifFailure((e) {});
    });
  }

  void getWinListResult() {
    getWinList().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          final winList = data.list1 ?? [];
          if (winList.isNotEmpty) {
            final winPrizes = winList
                .map((e) => "${e.moneylogUser}抽中${e.moneylogNotice}")
                .toList();
            winPrizeTitle.value = winPrizes.join("。");
          }
          remainCount.value = data.remainCount ?? 0;
          setState(() {
            rules = data.list2 ?? "";
          });
        }
      });
    });
  }

  void fetchLotteryConfig() {
    getLotteryConfig().then((value) {
      value.ifSuccess((data) {
        setState(() {
          configs = data.lotteryPeizhi ?? [];
          List<String> images = configs.map((e) => e?.img ?? "").toList();
          List<int> ids = configs.map((e) => e?.id ?? 0).toList();
          controller.addPrizes(images);
          controller.addPrizeId(ids);
        });
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // fetchLotteryResult();
      getWinListResult();
      fetchLotteryConfig();
      controller?.onCompleterIndex = _completer;
    });
    super.initState();
  }

  void _completer(int index) {
    Logger.write("index is ---$index");
    getWinListResult();
    final id = controller.getIds(index);
    final prizesList = configs.where((e) => e.id == id).toList();
    if (prizesList.isNotEmpty) {
      final prize = prizesList.first;
      PrizeDialog.show(context, prize: prize);
    }
  }

  @override
  Widget build(BuildContext context) {
    double rate = 880 / 375;
    double width = MediaQuery.of(context).size.width;
    if (configs.isEmpty) {
      return Center(
          child: SizedBox(
              width: 22.w,
              height: 22.w,
              child: const CircularProgressIndicator()));
    }
    if (configs.isNotEmpty) {
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              "抽奖得好礼",
              style: TextStyle(
                fontSize: 18.sp,
                height: 1.2,
                color: const Color(0xFEFCF7B2).withOpacity(0.7),
                fontWeight: FontWeight.w400,
              ),
            ),
            AppLocalImage(
              path: UIAssets.source!.iclt,
              width: 239.w,
              height: 43.h,
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              width: width,
              height: width * rate,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(UIAssets.source!.iclm),
                  fit: BoxFit.fill, // 让图片覆盖整个容器
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: (width * rate) / (880 / 12),
                  ),
                  ValueListenableBuilder<int>(
                    builder: (context, value, _) {
                      return RichText(
                        text: TextSpan(children: [
                          const WidgetSpan(
                              child: Icon(
                            Icons.campaign_outlined,
                            size: 13,
                            color: Colors.white,
                          )),
                          TextSpan(
                              text: '今日抽奖次数还剩$value',
                              style: TextStyle(
                                  color: Colors.white,
                                  height: 1.4,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp)),
                          WidgetSpan(
                              child: SizedBox(
                            width: 5.w,
                          )),
                        ]),
                      );
                    },
                    valueListenable: remainCount,
                  ),
                  SizedBox(
                    height: (width * rate) / (880 / 58),
                  ),
                  DkLotteryWidget(
                    controller: controller,
                  ),
                  SizedBox(
                    height: (width * rate) / (880 / 24),
                  ),
                  AnimatedButton(
                    width: 200.w,
                    height: (width * rate) / (880 / 44),
                    color: const Color(0xFFFAD97A),
                    onPressed: () {
                      if (controller.isRunning) {
                        return;
                      }
                      fetchLotteryResult(isClick: true);
                      // controller.startLottery(8);
                    },
                    enabled: true,
                    shadowDegree: ShadowDegree.light,
                    child: Text(
                      '立即抽奖',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: const Color(0xFFA5561E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (width * rate) / (880 / 42),
                  ),
                  ValueListenableBuilder<String>(
                    builder: (context, value, _) {
                      return SizedBox(
                        height: 12.h,
                        width: 150,
                        child: Marquee(
                          text: value.isEmpty ? " " : value,
                          style: AppStyle().bodyRegular_25(color: Colors.white),
                          scrollAxis: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          blankSpace: MediaQuery.of(context).size.width -
                              12.w -
                              8 * 4.w -
                              28.w -
                              5.w,
                          velocity: 20.0,
                          startPadding: 10.w,
                          accelerationCurve: Curves.linear,
                          decelerationCurve: Curves.easeOut,
                        ),
                      );
                    },
                    valueListenable: winPrizeTitle,
                  ),
                  SizedBox(
                    height: (width * rate) / (880 / 48),
                  ),
                  GestureDetector(
                    onTap: () {
                      pushPage(context, path: PagePath.lotteryRecordPage);
                    },
                    child: AppLocalImage(
                      path: UIAssets.source!.iclr,
                      width: 142.w,
                      height: 28.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: (width * rate) / (880 / 100),
                        left: 42.w,
                        right: 42.w),
                    child: RoundContainer(
                      backgroundColor: const Color(0xFF2A086F).withOpacity(0.3),
                      child: Text(
                        rules,
                        style: TextStyle(
                          fontSize: 14.sp,
                          height: 1.2,
                          color: const Color(0xFFA5561E),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
