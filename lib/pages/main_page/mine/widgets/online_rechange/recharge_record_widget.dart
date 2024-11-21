import 'package:churn/pages/main_page/mine/widgets/online_rechange/recharge_record_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/recharge_recode_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';

class RechargeRecordWidget extends StatefulWidget {
  const RechargeRecordWidget({super.key});

  @override
  State<RechargeRecordWidget> createState() => _RechargeRecordWidgetState();
}

class _RechargeRecordWidgetState extends State<RechargeRecordWidget> {
  int page = 1;
  RechargeRecodeModel? rechargeRecodeModel;
  late EasyRefreshController refreshController = EasyRefreshController();
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initData();
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    refreshController.dispose();
    super.dispose();
  }

  void initData() {
    getRechargeRecode(page: page).then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            rechargeRecodeModel = data;
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
    final list = rechargeRecodeModel?.list?.data ?? [];
    return EasyRefresh(
      controller: refreshController,
      header: const ClassicHeader(
        dragText: "下拉刷新",
        armedText: '开始释放',
        readyText: '刷新中...',
        processingText: '刷新中...',
        processedText: '成功了',
        noMoreText: '没有更多',
        failedText: '刷新失败',
        messageText: '最新更新时间 %T',
        safeArea: true,
      ),
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
                          Text('充值金额提现(USDT)',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w400,
                                  height: 1.2)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(rechargeRecodeModel?.chenggong ?? "",
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
                          Text('充值失败USDT)',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w400,
                                  height: 1.2)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(rechargeRecodeModel?.shibai ?? "",
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
                    final list = rechargeRecodeModel?.list?.data ?? [];
                    if (list.isNotEmpty) {
                      return RechargeRecordCardWidget(item: list[index]);
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
