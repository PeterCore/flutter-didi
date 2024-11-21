import 'package:churn/pages/main_page/mine/widgets/use_guide/user_guide_list_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/guides_user_result_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class UserGuideWidget extends StatefulWidget {
  const UserGuideWidget({super.key});

  @override
  State<UserGuideWidget> createState() => _UserGuideWidgetState();
}

class _UserGuideWidgetState extends State<UserGuideWidget>
    with SingleTickerProviderStateMixin {
  List<GuideItemList> guideList = [];
  TabController? _tabController; // 动态 TabController

  Widget _buildTabItem(int index, String label) {
    bool isSelected = _tabController?.index == index;

    return Tab(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // 动画过渡效果
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: isSelected
              ? Colors.white
              : const Color(0xFF000000).withOpacity(0.1), // 动态设置背景颜色，选中时透明
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected
                ? AppTheme().themeBackGroundColor
                : Colors.white, // 动态设置字体颜色
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    getUseGuide().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            guideList = data.data?.list ?? [];
            _tabController =
                TabController(length: guideList.length, vsync: this);
            _tabController?.addListener(() {
              setState(() {});
            });
          });
        }
      });
      value.ifFailure((e) {});
    });
    super.initState();
  }

  List<Widget> _tabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < guideList.length; i++) {
      tabs.add(_buildTabItem(i, guideList[i].name ?? ""));
    }
    return tabs;
  }

  List<Widget> _tabBarView() {
    List<Widget> tabs = [];
    for (int i = 0; i < guideList.length; i++) {
      tabs.add(
          KeepAliveWrapper(child: UserGuideListWidget(list: guideList[i])));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    if (_tabController == null) {
      return const Center(
          child: CircularProgressIndicator(
        color: Colors.white,
      ));
    }

    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TabBar(
              indicatorPadding: EdgeInsets.symmetric(vertical: 8.h),
              controller: _tabController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorColor: Colors.transparent,
              labelPadding: EdgeInsets.symmetric(
                  horizontal: 5.w), // 设置 Tab 项之间的间距// 调整滑块大小
              labelColor: Colors.white, // 选中的字体颜色
              unselectedLabelColor: Colors.black, // 未选中的字体颜色
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: _tabs(),
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F3F5), // 背景颜色
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r), // 左上圆角
                    topRight: Radius.circular(20.r), // 右上圆角
                  ),
                ),
                child: TabBarView(
                    controller: _tabController, children: _tabBarView())))
      ],
    );
  }
}
