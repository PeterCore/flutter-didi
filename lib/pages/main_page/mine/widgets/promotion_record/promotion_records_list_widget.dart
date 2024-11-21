import 'dart:async';

import 'package:churn/pages/main_page/mine/widgets/promotion_record/promotion_records_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/promotion_member_list.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';

class RequestPromotion {
  int lerve;
  String title;
  String searchKey;
  Function(int lerve, String searchKey)? onSelected;
  RequestPromotion({
    required this.lerve,
    required this.title,
    this.onSelected,
    required this.searchKey,
  });

  void selected() {
    onSelected?.call(lerve, searchKey);
  }
}

class PromotionRecordsListWidget extends StatefulWidget {
  const PromotionRecordsListWidget({super.key, required this.item});
  final RequestPromotion item;
  @override
  State<PromotionRecordsListWidget> createState() =>
      _PromotionRecordsListWidgetState();
}

class _PromotionRecordsListWidgetState
    extends State<PromotionRecordsListWidget> {
  List<MemberItem> memberList = [];
  late EasyRefreshController _controller;
  int page = 1;
  @override
  void initState() {
    // TODO: implement initState
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.item?.onSelected = (lerve, searchKey) {
        if (widget.item.lerve == lerve) {
          getMemberList();
        }
      };
    });
    getMemberList();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  Future<bool> getMemberList({bool isRefresh = true}) {
    Completer<bool> completer = Completer<bool>();
    if (isRefresh) {
      page = 1;
    }
    getPromotionMemberList(
            page: page, sokey: widget.item.searchKey, lerve: widget.item.lerve)
        .then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          final tempMemberList = data?.list?.data ?? [];
          if (isRefresh) {
            if (memberList.isNotEmpty) {
              memberList = [];
            }
            memberList.addAll(tempMemberList);
            if (tempMemberList.isNotEmpty) {
              if (data?.list?.currentPage == data?.list?.total) {
                _controller.finishLoad(IndicatorResult.noMore);
              } else {
                page = page + 1;
                _controller.resetFooter();
              }
            }
          } else {
            if (!_controller.controlFinishRefresh) return;
            if (tempMemberList.isEmpty) {
              _controller.finishLoad(IndicatorResult.noMore);
            } else {
              memberList.addAll(tempMemberList);
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
    return memberList.isEmpty
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
              //getTransactionList();
            },
            onLoad: () async {
              // getTransactionList(isRefresh: false);
            },
            child: ListView.builder(
              itemCount: memberList.length,
              itemBuilder: (context, index) {
                final item = memberList[index];
                return PromotionRecordsCardWidget(
                  item: item,
                );
              },
            ),
          );
  }
}
