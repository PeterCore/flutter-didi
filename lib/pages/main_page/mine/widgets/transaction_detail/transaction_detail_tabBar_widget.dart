import 'package:churn/pages/main_page/mine/widgets/transaction_detail/transaction_detail_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../models/transaction_request_model.dart';

class TransactionDetailTabBarWidget extends StatefulWidget {
  const TransactionDetailTabBarWidget(
      {super.key, required this.requestList, this.onSelectType});
  final List<TransactionRequestModel> requestList;
  final Function(int type)? onSelectType;
  @override
  State<TransactionDetailTabBarWidget> createState() =>
      _TransactionDetailTabBarWidgetState();
}

class _TransactionDetailTabBarWidgetState
    extends State<TransactionDetailTabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      // final requestModel = widget.requestList[_tabController.index];
      // requestModel.selected(requestModel.timestamp);
      setState(() {});
    });
    super.initState();
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
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
            onTap: (index) {
              final requestModel = widget.requestList[index];
              requestModel.selected(requestModel.formatTime, requestModel.type);
              widget.onSelectType?.call(requestModel.type);
            },
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
              _buildTabItem(0, widget.requestList[0].name ?? ""),
              _buildTabItem(1, widget.requestList[1].name ?? ""),
              _buildTabItem(2, widget.requestList[2].name ?? ""),
              _buildTabItem(3, widget.requestList[3].name ?? ""),
              _buildTabItem(4, widget.requestList[4].name ?? ""),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Expanded(
            child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            KeepAliveWrapper(
                child: TransactionDetailWidget(
              requestModel: widget.requestList[0],
            )),
            KeepAliveWrapper(
                child: TransactionDetailWidget(
              requestModel: widget.requestList[1],
            )),
            KeepAliveWrapper(
                child: TransactionDetailWidget(
              requestModel: widget.requestList[2],
            )),
            KeepAliveWrapper(
                child: TransactionDetailWidget(
              requestModel: widget.requestList[3],
            )),
            KeepAliveWrapper(
                child: TransactionDetailWidget(
              requestModel: widget.requestList[4],
            )),
            // KeepAliveWrapper(
            //     child: TransactionDetailWidget(
            //   requestModel: widget.requestList[5],
            // )),
          ],
        ))
      ],
    );
  }
}
