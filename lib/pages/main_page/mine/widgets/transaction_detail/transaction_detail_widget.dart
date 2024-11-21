import 'dart:async';

import 'package:churn/pages/main_page/mine/widgets/transaction_detail/transaction_detail_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/transaction_detail_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../models/transaction_request_model.dart';

class TransactionDetailWidget extends StatefulWidget {
  const TransactionDetailWidget({super.key, required this.requestModel});
  final TransactionRequestModel requestModel;
  @override
  State<TransactionDetailWidget> createState() =>
      _TransactionDetailWidgetState();
}

class _TransactionDetailWidgetState extends State<TransactionDetailWidget> {
  int page = 0;
  List<TransactionDetailItem> transactions = List.of([]);
  late EasyRefreshController _controller;
  int type = 0;
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
      widget!.requestModel!.onSelectedTimestamp = (timeStamp, type) {
        if (type == widget.requestModel.type) {
          getTransactionList();
        }
      };
    });
    getTransactionList();
    super.initState();
  }

  Future<bool> getTransactionList({bool isRefresh = true}) {
    Completer<bool> completer = Completer<bool>();
    if (isRefresh) {
      page = 1;
    }
    getTransactionDetailList(
            page: page,
            sortId: widget.requestModel.type,
            times: widget!.requestModel!.formatTime)
        .then((value) {
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
