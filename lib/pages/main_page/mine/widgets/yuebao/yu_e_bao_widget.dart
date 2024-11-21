import 'dart:async';

import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/mine/widgets/yuebao/yu_e_bao_dealing_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/yu_e_bao_config_model.dart';
import 'package:dk_net_work/models/yu_e_bao_transactions_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';

class YuEBaoWidget extends StatefulWidget {
  const YuEBaoWidget({super.key});

  @override
  State<YuEBaoWidget> createState() => _YuEBaoWidgetState();
}

class _YuEBaoWidgetState extends State<YuEBaoWidget> {
  YueBaoConfigModel? config;
  late EasyRefreshController _controller;
  List<YuEBaoTransactionsItem> transactions = List.of([]);
  int page = 1;

  @override
  void initState() {
    // TODO: implement initState
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      refresh();
    });

    super.initState();
  }

  Future<bool> getTransactions({bool isRefresh = true}) {
    Completer<bool> completer = Completer<bool>();
    if (isRefresh) {
      page = 1;
    }
    getYueBaoTranscationsList(page: page).then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          final tempTransactions = data?.list?.data ?? [];
          if (isRefresh) {
            if (transactions.isNotEmpty) {
              transactions = [];
            }
            transactions.addAll(tempTransactions);
            if (tempTransactions.isNotEmpty) {
              if (data?.list?.currentPage == data?.list?.total) {
                _controller.finishLoad(IndicatorResult.noMore);
              } else {
                page = page + 1;
                _controller.resetFooter();
              }
            }
          } else {
            if (!_controller.controlFinishRefresh) return;
            if (tempTransactions.isEmpty) {
              _controller.finishLoad(IndicatorResult.noMore);
            } else {
              transactions.addAll(tempTransactions);
              if (data?.list?.currentPage == data?.list?.total) {
                _controller.finishLoad(IndicatorResult.noMore);
              } else {
                page = page + 1;
                _controller.resetFooter();
              }
            }
          }
          _controller.finishRefresh();

          if (!completer.isCompleted) {
            completer.complete(true);
          }
          setState(() {});
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
        if (!completer.isCompleted) {
          completer.complete(true);
        }
        setState(() {});
      });
    });

    return completer.future;
  }

  Future<bool> getYueBaoConfigInfo() {
    Completer<bool> completer = Completer<bool>();
    getYueBaoConfig().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        if (!completer.isCompleted) {
          if (mounted) {
            completer.complete(true);
            setState(() {
              config = data;
            });
          }
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
        if (!completer.isCompleted) {
          completer.complete(true);
        }
      });
    });
    return completer.future;
  }

  void refresh() {
    getYueBaoConfigInfo();
    getTransactions();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      controller: _controller,
      header: Constants().refreshHeader,
      footer: Constants().loadFooter,
      onRefresh: () async {
        refresh();
      },
      onLoad: () async {
        getTransactions(isRefresh: false);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: RoundContainer(
              imagePath: UIAssets.source!.icCardBg,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '余额宝余额(USDT)',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 14.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    config?.data?.zongJinE ?? "0.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.2),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '日利率 ${config?.data?.ratduodeli ?? ""}%',
                        style: TextStyle(
                            color: const Color(0xFFFFCC90),
                            fontSize: 13.sp,
                            height: 1.1,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 5.w),
                      Icon(
                        Icons.trending_up,
                        color: const Color(0xFFFFCC90),
                        size: 13.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 31.h),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '10000USDT收益约',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontSize: 13.sp,
                                    height: 1.1,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                "${config?.data?.wanduodeli ?? 0}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 31.h),
                              GradientButton(
                                  borderColor: AppTheme().inputBackgroundColor,
                                  gradientColors: const [
                                    Colors.transparent,
                                    Colors.transparent
                                  ],
                                  text: "转入",
                                  onPressed: (index) async {
                                    double inCash = double.parse(
                                        config?.data?.txmoney ?? "0");
                                    final Object? isRefresh = await pushPage(
                                        context,
                                        path: PagePath.yuEBaoTxInPage,
                                        ext: {"inCash": inCash});
                                    if (isRefresh == true) {
                                      refresh();
                                    }
                                  })
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '累计收益(USDT)',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontSize: 13.sp,
                                    height: 1.1,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                config?.data?.fanlJinE ?? "0.0",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 31.h),
                              GradientButton(
                                  textColor: AppTheme().themeBackGroundColor,
                                  borderWidth: 0.5,
                                  text: "转出",
                                  gradientColors: const [
                                    Colors.white,
                                    Colors.white
                                  ],
                                  onPressed: (index) async {
                                    double outCash = double.parse(
                                        config?.data?.zongJinE ?? "0.00");
                                    final Object? isRefresh = await pushPage(
                                        context,
                                        path: PagePath.yuEBaoTxOutPage,
                                        ext: {"outCash": outCash});
                                    if (isRefresh == true) {
                                      refresh();
                                    }
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  config?.data?.ruleStr ?? "",
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 13.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                child: Text(
                  "余额宝明细",
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 16.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            if (transactions.isEmpty)
              SliverToBoxAdapter(
                child: AppLocalImage(
                  path: UIAssets.source!.icEmpty,
                  width: 224.w,
                  height: 224.w,
                ),
              ),
            if (transactions.isNotEmpty) // if (list.isNotEmpty)
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (transactions.isNotEmpty) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child:
                            YuEBaoDealingCardWidget(item: transactions[index]),
                      );
                    }
                  },
                  childCount: transactions.length, // 增加1个加载项
                ),
              ),
          ],
        ),
      ),
    );
  }
}
