import 'package:dk_utils/components/keep_alive_wrap/keep_alive_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'coupon_list_widget.dart';

class CouponTabBarWidget extends StatefulWidget {
  const CouponTabBarWidget({super.key, required this.type});
  final int type;
  @override
  State<CouponTabBarWidget> createState() => _CouponTabBarWidgetState();
}

class _CouponTabBarWidgetState extends State<CouponTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _tabs = const [
    '未使用',
    '已使用',
    "已过期",
  ];
  @override
  void initState() {
    super.initState();
    // 初始化 TabController
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 7.w),
            controller: _tabController,
            tabAlignment: TabAlignment.fill,
            isScrollable: false,
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: _tabs.map((category) => Tab(text: category)).toList(),
          ),
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: [
            KeepAliveWrapper(
                child: CouponListWidget(
              sortId: 0,
              type: widget.type,
            )),
            KeepAliveWrapper(
                child: CouponListWidget(
              sortId: 1,
              type: widget.type,
            )),
            KeepAliveWrapper(
                child: CouponListWidget(
              sortId: 2,
              type: widget.type,
            )),
          ],
        ))
      ],
    );
  }
}
