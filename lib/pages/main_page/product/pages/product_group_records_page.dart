import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/product/logic/product_group_records_controller.dart';
import 'package:dk_net_work/models/grouplist_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/services.dart';
import '../widgets/base_countdown_wiget.dart';

class ProductGroupRecordsPage extends ConsumerStatefulWidget {
  final String type;
  const ProductGroupRecordsPage({super.key, this.type = '0'});

  @override
  ConsumerState<ProductGroupRecordsPage> createState() =>
      _ProductGroupRecordsPageState();
}

class _ProductGroupRecordsPageState
    extends ConsumerState<ProductGroupRecordsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: widget.type == '0' ? 0 : 1);
    _tabController.addListener(_handleTabSelection);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    if (_tabController.animation!.value == _tabController.index.toDouble()) {
      ref
          .read(groupRecordsProvider(widget.type).notifier)
          .changeTab(_tabController.index.toString());
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref
          .read(groupRecordsProvider(widget.type).notifier)
          .loadMore(_tabController.index.toString());
    }
  }

  Future<void> _onRefresh() async {
    // await ref.read(groupRecordsProvider(widget.type).notifier).refresh(_tabController.index);
  }

  @override
  Widget build(BuildContext context) {
    final groupRecordsState = ref.watch(groupRecordsProvider(widget.type));

    return BlackStylesContainer(
      title: '拼团记录',
      rightActions: [
        GestureDetector(
          onTap: () {
            if (groupRecordsState.grouprules.isNotEmpty) {
              WmmDialog.showWMMDialog(context,
                  title: "拼团规则", content: groupRecordsState.grouprules);
            }
          },
          child: Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '拼团规则',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().themeBackGroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      child: Column(
        children: [
          _buildTabBarWidget(),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildRecordsList(groupRecordsState.initiatedRecords, '0'),
                _buildRecordsList(groupRecordsState.participatedRecords, '1'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBarWidget() {
    return TabBar(
      controller: _tabController,
      tabs: const [
        Tab(text: '我发起的'),
        Tab(text: '我参与的'),
      ],
      labelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
      labelColor: Colors.black,
      unselectedLabelColor: const Color(0xff5C5D69),
      indicatorColor: const Color(0xff15151D),
    );
  }

  Widget _buildRecordsList(List<Datum> records, String type) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: records.length,
        itemBuilder: (context, index) {
          return _buildGroupRecordWidget(record: records[index], type: type);
        },
      ),
    );
  }

  Widget _buildGroupRecordWidget({
    required Datum record,
    required String type,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.r),
      ),
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(record.title ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: const Color(0xff15151D),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp))),
                if (record.status == 0)
                  Text(
                    '拼团中',
                    style: TextStyle(
                      color: const Color(0xFFED9B1F),
                      fontSize: 14.sp,
                    ),
                  )
                else if (record.status == 1)
                  Text(
                    '拼团成功',
                    style: TextStyle(
                      color: AppTheme().themeBackGroundColor,
                      fontSize: 14.sp,
                    ),
                  )
                else
                  Text(
                    '拼团失败',
                    style: TextStyle(
                      color: const Color(0xFFC0392B),
                      fontSize: 14.sp,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8.h),
            Text('记录编号: ${record.orderid}',
                style:
                    TextStyle(color: const Color(0xff5C5D69), fontSize: 14.sp)),
            if (type == '0')
              Text('发起时间: ${record.createdAt}',
                  style: TextStyle(
                      color: const Color(0xff5C5D69), fontSize: 14.sp)),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  _buildInfoColumn(
                      title: '${record.selfmoney} USDT', subtitle: '投资金额'),
                  _buildInfoColumn(
                      title: '${record.money} USDT', subtitle: '每人最低投资金额'),
                  if (type == '0')
                    _buildInfoColumn(
                        title:
                            '${type == '0' ? record.participantLimit : record.renshu}人',
                        subtitle: '计划参与人数'),
                  if (type == '0')
                    _buildInfoColumn(
                        title:
                            '${type == '0' ? record.bugnumber : record.renshu2}人',
                        subtitle: '当前参与人数'),
                  _buildInfoColumn(
                      title: '${record.allmoney} USDT', subtitle: '团队总投资金额'),
                  _buildInfoColumn(
                      title: '${record.groupBuyCode}', subtitle: '拼团口令'),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            if (type == '0')
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('拼团倒计时',
                      style: TextStyle(
                          color: const Color(0xff5C5D69), fontSize: 14.sp)),
                  CountdownTimer(
                    endTime: DateTime.parse(record.updatedAt.toString()),
                    textStyle: TextStyle(
                        color: AppTheme().themeBackGroundColor,
                        fontSize: 14.sp),
                  ),
                ],
              ),
            SizedBox(height: 4.h),
            SizedBox(
              width: double.infinity,
              height: 44.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6D68ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                onPressed: () {
                  Clipboard.setData(
                      ClipboardData(text: record.groupBuyCode ?? ''));
                  EasyLoading.showSuccess('复制成功');
                },
                child: Text('复制口令',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: 16.h),
            if (type == '0')
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('发起人信息',
                      style: TextStyle(
                          color: const Color(0xff15151D),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(
                          Icons.person,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text('${record.relaname} ${record.tele}'),
                    ],
                  ),
                ],
              ),
            if (type == '1')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('参与人信息',
                      style: TextStyle(
                          color: const Color(0xff15151D),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500)),
                  ...(record.joinlist ?? []).map(
                    (e) => Container(
                      padding: EdgeInsets.only(top: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.grey[300],
                                child: const Icon(
                                  Icons.person,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Text('${e.relaname} ${e.tele}'),
                            ],
                          ),
                          Text('${e.money} USDT',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff15151D),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoColumn({
    required String title,
    required String subtitle,
  }) {
    return SizedBox(
        width: 130.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                )),
            Text(subtitle, style: const TextStyle(color: Color(0xff5C5D69))),
          ],
        ));
  }
}
