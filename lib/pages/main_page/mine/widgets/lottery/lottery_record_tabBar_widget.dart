import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import 'lottery_record_widget.dart';

class LotteryRecordTabBarWidget extends StatefulWidget {
  const LotteryRecordTabBarWidget({super.key});

  @override
  State<LotteryRecordTabBarWidget> createState() =>
      _LotteryRecordTabBarWidgetState();
}

class _LotteryRecordTabBarWidgetState extends State<LotteryRecordTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = const ['全部', '现金类', "物品类", "奖券类"];

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildTabItem(int index, String label) {
    bool isSelected = _tabController.index == index;

    return Tab(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // 动画过渡效果
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: isSelected ? Colors.black : Colors.white, // 动态设置背景颜色，选中时透明
          border: Border.all(color: Colors.black12),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, // 动态设置字体颜色
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            indicatorPadding: EdgeInsets.symmetric(vertical: 8.h),
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.transparent,
            labelPadding:
                EdgeInsets.symmetric(horizontal: 5.w), // 设置 Tab 项之间的间距// 调整滑块大小
            labelColor: Colors.white, // 选中的字体颜色
            unselectedLabelColor: Colors.black, // 未选中的字体颜色
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              _buildTabItem(0, '全部'),
              _buildTabItem(1, '现金类'),
              _buildTabItem(2, '物品类'),
              _buildTabItem(3, '奖券类'),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: const [
            KeepAliveWrapper(
                child: LotteryRecordWidget(
              type: 0,
            )),
            KeepAliveWrapper(
                child: LotteryRecordWidget(
              type: 1,
            )),
            KeepAliveWrapper(
                child: LotteryRecordWidget(
              type: 2,
            )),
            KeepAliveWrapper(
                child: LotteryRecordWidget(
              type: 3,
            )),
          ],
        ))
      ],
    );
  }
}
