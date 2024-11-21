import 'dart:async';

import 'package:churn/common/load_down_file/file_down_load.dart'
    if (dart.library.io) 'package:churn/common/load_down_file/file_down_load_mobile.dart'
    if (dart.library.html) 'package:churn/common/load_down_file/file_down_load_web.dart';
import 'package:churn/pages/main_page/mine/widgets/loan/loan_record_card_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/loan/repay_loan_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/loan_contract_record_result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../../../../router_config.dart';

class LoanRecordListWidget extends StatefulWidget {
  const LoanRecordListWidget({super.key, this.status});
  final String? status;
  @override
  State<LoanRecordListWidget> createState() => _LoanRecordListWidgetState();
}

class _LoanRecordListWidgetState extends State<LoanRecordListWidget> {
  List<LoanContractRecordItem> recordList = [];
  int page = 0;
  late EasyRefreshController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLoanContractRecordList();
    });
    super.initState();
  }

  Future<bool> getLoanContractRecordList({bool isRefresh = true}) {
    Completer<bool> completer = Completer<bool>();
    if (isRefresh) {
      page = 1;
    }
    getLoanContractRecords(page: page, status: widget.status ?? "")
        .then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          final tempLoanContractRecords = data?.list?.data ?? [];
          if (isRefresh) {
            if (recordList.isNotEmpty) {
              recordList = [];
            }
            recordList.addAll(tempLoanContractRecords);
            if (tempLoanContractRecords.isNotEmpty) {
              if (data?.list?.currentPage == data?.list?.total) {
                _controller.finishLoad(IndicatorResult.noMore);
              } else {
                page = page + 1;
                _controller.resetFooter();
              }
            }
          } else {
            if (!_controller.controlFinishRefresh) return;
            if (tempLoanContractRecords.isEmpty) {
              _controller.finishLoad(IndicatorResult.noMore);
            } else {
              recordList.addAll(tempLoanContractRecords);
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
    if (recordList.isEmpty) {
      return Center(
        child: AppLocalImage(
          path: UIAssets.source!.icEmpty,
          width: 220.w,
          height: 220.w,
        ),
      );
    }
    return EasyRefresh(
      controller: _controller,
      header: Constants().refreshHeader,
      footer: Constants().loadFooter,
      onRefresh: () async {
        getLoanContractRecordList();
      },
      onLoad: () async {
        getLoanContractRecordList(isRefresh: false);
      },
      child: ListView.builder(
        itemCount: recordList.length,
        itemBuilder: (context, index) {
          final item = recordList[index];
          return LoanRecordCardWidget(
            item: item,
            onHandlerClick: (p) async {
              if (p.$1 == LoanContractHandler.earlyRepay) {
                await pushPage(context, path: PagePath.loanRepaymentPage, ext: {
                  "type": LoanRepaymentType.early.code,
                  "contractNo": p.$2
                });
                getLoanContractRecordList();
              } else if (p.$1 == LoanContractHandler.downLoadContract) {
                EasyLoading.show();
                downLoadLoanContract(contractNo: item?.bianhao ?? "")
                    .then((value) {
                  value.ifSuccess((data) async {
                    final fileDownLoadImpl = FileDownLoadImpl();
                    await fileDownLoadImpl.saveFile(
                        data, "${item?.bianhao}.pdf");
                    EasyLoading.dismiss();
                    EasyLoading.showSuccess("下载成功");
                  });
                  value.ifFailure((e) {
                    EasyLoading.dismiss();
                    EasyLoading.showError(e.message);
                  });
                });
              } else if (p.$1 == LoanContractHandler.browseContract) {
                pushPage(context,
                    path: PagePath.loanContractDetailPage,
                    ext: {"contractNo": p.$2});
              }
            },
          );
        },
      ),
    );
  }
}
