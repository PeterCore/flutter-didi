import 'dart:async';

import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/lottery_record_list.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import 'lottery_record_card_widget.dart';

class LotteryRecordWidget extends StatefulWidget {
  const LotteryRecordWidget({super.key, required this.type});
  final int type;
  @override
  State<LotteryRecordWidget> createState() => _LotteryRecordWidgetState();
}

class _LotteryRecordWidgetState extends State<LotteryRecordWidget> {
  int page = 0;
  List<LotteryRecordItem> lotteryRecords = List.of([]);
  late EasyRefreshController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLotteryList();
    });
    super.initState();
  }

  Future<bool> getLotteryList({bool isRefresh = true}) {
    Completer<bool> completer = Completer<bool>();
    if (isRefresh) {
      page = 1;
    }
    getLotteryRecord(page: page, type: widget.type).then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          final tempLotteryRecords = data?.list?.data ?? [];
          if (isRefresh) {
            if (lotteryRecords.isNotEmpty) {
              lotteryRecords = [];
            }
            lotteryRecords.addAll(tempLotteryRecords);
            if (tempLotteryRecords.isNotEmpty) {
              if (data?.list?.currentPage == data?.list?.total) {
                _controller.finishLoad(IndicatorResult.noMore);
              } else {
                page = page + 1;
                _controller.resetFooter();
              }
            }
          } else {
            if (!_controller.controlFinishRefresh) return;
            if (tempLotteryRecords.isEmpty) {
              _controller.finishLoad(IndicatorResult.noMore);
            } else {
              lotteryRecords.addAll(tempLotteryRecords);
              if (data?.list?.currentPage == data?.list?.total) {
                _controller.finishLoad(IndicatorResult.noMore);
              } else {
                page = page + 1;
                _controller.finishLoad(IndicatorResult.success);
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

  @override
  Widget build(BuildContext context) {
    if (lotteryRecords.isEmpty) {
      return Center(
        child: AppLocalImage(
          path: UIAssets.source!.icEmpty,
          width: 224.w,
          height: 224.w,
        ),
      );
    }

    return EasyRefresh(
      controller: _controller,
      header: Constants().refreshHeader,
      footer: Constants().loadFooter,
      onRefresh: () async {
        getLotteryList();
      },
      onLoad: () async {
        getLotteryList(isRefresh: false);
      },
      child: ListView.builder(
        itemCount: lotteryRecords.length,
        itemBuilder: (context, index) {
          final item = lotteryRecords[index];
          return LotteryRecordCardWidget(
            item: item,
          );
        },
      ),
    );
  }
}
