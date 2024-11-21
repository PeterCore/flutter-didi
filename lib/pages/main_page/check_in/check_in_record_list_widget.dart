import 'dart:async';

import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/transaction_detail_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../mine/widgets/transaction_detail/transaction_detail_card_widget.dart';

class CheckInRecordListWidget extends StatefulWidget {
  const CheckInRecordListWidget({super.key});

  @override
  State<CheckInRecordListWidget> createState() =>
      _CheckInRecordListWidgetState();
}

class _CheckInRecordListWidgetState extends State<CheckInRecordListWidget> {
  int page = 0;
  List<TransactionDetailItem> transactions = List.of([]);
  late EasyRefreshController _controller;
  int type = 7;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      getTransactionList();
    });
    getTransactionList();
    super.initState();
  }

  Future<bool> getTransactionList({bool isRefresh = true}) {
    Completer<bool> completer = Completer<bool>();
    if (isRefresh) {
      page = 1;
    }
    getTransactionDetailList(page: page, sortId: type, times: "").then((value) {
      EasyLoading.dismiss();
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
    return transactions.isEmpty
        ? Align(
            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.only(top: 110.h),
                child: AppLocalImage(
                  path: UIAssets.source!.icEmpty,
                  width: 220.w,
                  height: 220.w,
                )),
          )
        : EasyRefresh(
            controller: _controller,
            header: Constants().refreshHeader,
            footer: Constants().loadFooter,
            onRefresh: () async {
              getTransactionList();
            },
            onLoad: () async {
              getTransactionList(isRefresh: false);
            },
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final item = transactions[index];
                return TransactionDetailCardWidget(
                  item: item,
                );
              },
            ),
          );
  }
}
