import 'package:churn/pages/main_page/mine/widgets/promotion_record/promotion_records_list_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/promotion_records_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class PromotionItem {
  String title;
  String amount;

  PromotionItem({
    required this.title,
    required this.amount,
  });
}

class PromotionRowItem {
  PromotionItem first;
  PromotionItem second;

  PromotionRowItem({
    required this.first,
    required this.second,
  });
}

class PromotionRecordsWidget extends StatefulWidget {
  const PromotionRecordsWidget({super.key});

  @override
  State<PromotionRecordsWidget> createState() => _PromotionRecordsWidgetState();
}

class _PromotionRecordsWidgetState extends State<PromotionRecordsWidget>
    with SingleTickerProviderStateMixin {
  PromotionRecordData? records;
  late TabController _tabController;
  TextEditingController controller = TextEditingController();
  List<PromotionRowItem> rows = [];
  List<RequestPromotion> requests = [];

  List<String> numberPTitle = [
    "一级投资人数",
    "二级投资人数",
    "三级投资人数",
    "三级内总计投资",
    "团队总投资人数",
    "团队总计投资"
  ];
  List<String> amountTitle = [
    "一级投资金额",
    "二级投资金额",
    "三级投资金额",
    "三级内总计提现",
    "团队总人数",
    "团队总计提现"
  ];
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    List<String> titles = [
      "查看1层下级",
      "查看2层下级",
      "查看3层下级",
    ];
    for (int i = 0; i < titles.length; i++) {
      RequestPromotion item =
          RequestPromotion(lerve: i + 1, title: titles[i], searchKey: "");
      requests.add(item);
    }
    _tabController.addListener(() {
      setState(() {});
    });
    configData();
    fetchData();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    controller.dispose();
    super.dispose();
  }

  void configData({PromotionRecordData? data}) {
    rows = [];
    records = data;
    PromotionItem first1 = PromotionItem(
        title: numberPTitle[0], amount: "${records?.onetzrs ?? 0} 人");
    PromotionItem second1 = PromotionItem(
        title: amountTitle[0], amount: "${records?.onecz ?? 0} U");
    PromotionRowItem item1 = PromotionRowItem(first: first1, second: second1);
    rows.add(item1);

    PromotionItem first2 = PromotionItem(
        title: numberPTitle[1], amount: "${records?.twouzrs ?? 0} 人");
    PromotionItem second2 = PromotionItem(
        title: amountTitle[1], amount: "${records?.twoucz ?? "0"} U");
    PromotionRowItem item2 = PromotionRowItem(first: first2, second: second2);
    rows.add(item2);

    PromotionItem first3 = PromotionItem(
        title: numberPTitle[2], amount: "${records?.threezrs ?? 0} 人");
    PromotionItem second3 = PromotionItem(
        title: amountTitle[2], amount: "${records?.threecz ?? "0"} U");
    PromotionRowItem item3 = PromotionRowItem(first: first3, second: second3);
    rows.add(item3);
    //

    PromotionItem first4 = PromotionItem(
        title: numberPTitle[3], amount: "${records?.hebicz ?? 0} U");
    PromotionItem second4 = PromotionItem(
        title: amountTitle[3], amount: "${(records?.hebizrs ?? 0)} U");
    PromotionRowItem item4 = PromotionRowItem(first: first4, second: second4);
    rows.add(item4);

    PromotionItem first5 = PromotionItem(
        title: numberPTitle[4], amount: "${records?.totltzrs ?? 0} 人");
    PromotionItem second5 = PromotionItem(
        title: amountTitle[4], amount: "${(records?.totltzhuce ?? 0)} 人");
    PromotionRowItem item5 = PromotionRowItem(first: first5, second: second5);
    rows.add(item5);

    PromotionItem first6 = PromotionItem(
        title: numberPTitle[5], amount: "${records?.totltz ?? 0} U");
    PromotionItem second6 = PromotionItem(
        title: amountTitle[5],
        amount: "${(records?.teamTotalWithdraw ?? 0)} U");
    PromotionRowItem item6 = PromotionRowItem(first: first6, second: second6);
    rows.add(item6);
    if (mounted) {
      setState(() {});
    }
  }

  void fetchData() {
    getPromotionRecords().then((value) {
      value.ifSuccess((data) {
        configData(data: data.data);
      });
      value.ifFailure((e) {});
    });
  }

  List<Widget> _buildDetail() {
    List<Widget> list = [];
    int i = 0;
    for (var item in rows) {
      list.add(buildRowWithDivider(
          item.first.title,
          item.first.amount,
          item.second.title,
          item.second.amount,
          i != rows.length - 1 ? false : true));
      i++;
    }
    return list;
  }

  Widget _buildHeader() {
    Widget container = Container();
    container = Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
      child: RoundContainer(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     buildStatisticItem('团队总计投资(USDT)', records?.totltz ?? "0"),
            //     buildStatisticItem(
            //         '团队总计提现(USDT)', records?.teamTotalWithdraw ?? "0"),
            //   ],
            // ),
            // SizedBox(height: 16.h),
            RoundContainer(
              backgroundColor: const Color(0xFFF0F3FA),
              child: Column(
                children: _buildDetail(),
              ),
            )
          ],
        ),
      ),
    );
    return container;
  }

  Widget _buildTabItem(int index, String label) {
    bool isSelected = _tabController.index == index;

    return Tab(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // 动画过渡效果
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: isSelected
              ? AppTheme().themeBackGroundColor
              : Colors.white, // 动态设置背景颜色，选中时透明
          border: Border.all(color: Colors.black12),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            height: 1.2,
            fontWeight: FontWeight.w400,
            color: isSelected
                ? Colors.white
                : AppTheme().themeBackGroundColor, // 动态设置字体颜色
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        // SliverAppBar with Header and TabBar
        SliverToBoxAdapter(
          child: _buildHeader(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
            child: DKInputField(
              cursorColor: Colors.black,
              hintText: "请输入手机号查询",
              borderRadius: 30.r,
              onSubmitted: (value) {},
              backgroundColor: Colors.white,
              controller: controller,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
        SliverAppBar(
          floating: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent, // 确保没有阴影颜色
          pinned: false, // 吸附效果
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: TabBar(
                    onTap: (index) {
                      requests[index].selected();
                    },
                    indicator: BoxDecoration(),
                    controller: _tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.symmetric(
                        horizontal: 5.w), // 设置 Tab 项之间的间距// 调整滑块大小
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      _buildTabItem(0, requests[0].title),
                      _buildTabItem(1, requests[1].title),
                      _buildTabItem(2, requests[2].title),
                      // _buildTabItem(3, requests[3].title),
                      // _buildTabItem(4, requests[4].title),
                    ]),
              ),
            ),
          ),
        ),
      ],
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController, // 与 TabBar 共享同一个 TabController
        children: requests.map((requests) {
          return KeepAliveWrapper(
            child: PromotionRecordsListWidget(
              item: requests,
            ),
          ); // 根据分类显示不同的产品网格
        }).toList(),
      ),
    );
  }

  Widget buildTitleValueItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 12.sp,
              color: AppTheme().wordSecondColor,
              height: 1.2,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppTheme().wordPrimaryColor,
            height: 1.2,
          ),
        ),
      ],
    );
  }

  // 构建单行布局并带分割线，isLastRow 为 true 时不绘制水平分割线
  Widget buildRowWithDivider(String leftTitle, String leftValue,
      String rightTitle, String rightValue, bool isLastRow) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              // 左侧项目
              Expanded(child: buildTitleValueItem(leftTitle, leftValue)),
              // 竖向分割线
              Container(
                width: 0.2,
                color: AppTheme().dividerLineColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              // 右侧项目
              Expanded(child: buildTitleValueItem(rightTitle, rightValue)),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        // 如果不是最后一行则绘制水平分割线
        if (!isLastRow)
          Divider(
            color: AppTheme().dividerLineColor,
            height: 1,
            thickness: 0.2,
          ),
        if (!isLastRow) SizedBox(height: 16.h),
      ],
    );
  }

  Widget buildStatisticItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14.sp,
              color: AppTheme().wordSecondColor,
              height: 1.2,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 8.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppTheme().wordPrimaryColor,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
