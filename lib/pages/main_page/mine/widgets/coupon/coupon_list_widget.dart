import 'package:churn/pages/main_page/mine/widgets/coupon/coupon_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/welfare_coupon_result_model.dart';
import 'package:flutter/material.dart';

class CouponListWidget extends StatefulWidget {
  const CouponListWidget({super.key, required this.sortId, required this.type});
  final int sortId;
  final int type;
  @override
  State<CouponListWidget> createState() => _CouponListWidgetState();
}

class _CouponListWidgetState extends State<CouponListWidget> {
  List<WelfareItem> list = [];
  int page = 1;
  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getCouponLogs(sortid: widget.sortId, page: page, type: widget.type)
          .then((value) {
        value.ifSuccess((data) {
          if (mounted) {
            setState(() {
              list = data.list?.data ?? [];
            });
          }
        });
        value.ifFailure((e) {});
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final coupon = list[index];
        return CouponCardWidget(
          item: coupon,
        );
      },
    );
  }
}
