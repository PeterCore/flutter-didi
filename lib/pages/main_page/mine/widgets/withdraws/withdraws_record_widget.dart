import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/mine/widgets/transfer/transfer_record_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/transfer_withdraws_record_list.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class WithdrawsRecordWidget extends StatefulWidget {
  const WithdrawsRecordWidget({super.key});

  @override
  State<WithdrawsRecordWidget> createState() => _WithdrawsRecordWidgetState();
}

class _WithdrawsRecordWidgetState extends State<WithdrawsRecordWidget> {
  int page = 1;
  TransferWithdrawsRecordList? recordList;
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      initData();
    });
    super.initState();
  }

  void initData() {
    getTransferWithdrawsRecord(sortId: 0, page: page).then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            recordList = data;
          });
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = recordList?.list?.data ?? [];
    return EasyRefresh(
      header: Constants().refreshHeader,
      onRefresh: () async {
        initData();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Column(
              children: [
                RoundContainer(
                  imagePath: UIAssets.source!.icCardBg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('提现成功金额(USDT)',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w400,
                                  height: 1.2)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(recordList?.chenggong ?? "",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('提现失败金额(USDT)',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w400,
                                  height: 1.2)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(recordList?.shibai ?? "",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            )),
            if (list.isNotEmpty)
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final list = recordList?.list?.data ?? [];
                    if (list.isNotEmpty) {
                      return TransferRecordCardWidget(item: list[index]);
                    }
                  },
                  childCount: list.length, // 增加1个加载项
                ),
              ),
          ],
        ),
      ),
    );
  }
}
