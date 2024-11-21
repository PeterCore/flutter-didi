import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/market/logic/my_point_controller.dart';
import 'package:churn/pages/main_page/market/widgets/product_widget.dart';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class Category {
  int? id;
  String? name;
  Category({this.id, this.name});
}

class MarketWidget extends StatefulWidget {
  const MarketWidget({super.key});

  @override
  State<MarketWidget> createState() => _MarketWidgetState();
}

class _MarketWidgetState extends State<MarketWidget>
    with SingleTickerProviderStateMixin {
  MyPointController myPointController = MyPointController();
  final ValueNotifier<int> myPointNotifier = ValueNotifier<int>(0);

  List<Category> categories = []; // 从后台加载的分类
  List<String> productData =
      List.generate(6, (index) => '商品 $index'); // 模拟的产品数据
  TabController? _tabController; // 动态 TabController
  // int currentPoint = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getCategory().then((value) {
        value.ifSuccess((data) {
          if (mounted) {
            final list = data.list ?? [];
            setState(() {
              if (list.isNotEmpty) {
                final categories_ = list
                    .map((category) =>
                        Category(id: category.id, name: category.name))
                    .toList();
                categories.add(Category(id: 0, name: "全部"));
                categories.addAll(categories_);
                _tabController =
                    TabController(length: categories.length, vsync: this);
              }
            });
          }
        });
        value.ifFailure((e) {});
      });
    });
    myPointController.getCurrentPoint();
    myPointController.addListener(_updatePoint);
  }

  void _updatePoint() {
    if (mounted) {
      final curPointDouble = double.parse(myPointController
              .myPointViewModel.minePointResultModel?.data?.integral ??
          "0");
      final curPoint = curPointDouble.toInt();
      myPointNotifier.value = curPoint;
    }
  }

  @override
  void dispose() {
    myPointController.removeListener(_updatePoint);
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_tabController == null) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        // SliverAppBar with Header and TabBar
        SliverToBoxAdapter(
          child: ValueListenableBuilder<int>(
            builder: (context, value, _) {
              return SizedBox(
                height: 231.h,
                child: _buildHeader(value),
              );
            },
            valueListenable: myPointNotifier,
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
              child: TabBar(
                controller: _tabController,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorPadding:
                    const EdgeInsets.only(left: 6, right: 6, bottom: 10),
                indicatorColor: AppTheme().themeBackGroundColor,
                labelColor: AppTheme().wordPrimaryColor,
                unselectedLabelColor: AppTheme().wordSecondColor,
                tabs: categories
                    .map((category) => Tab(text: category.name))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
      body: TabBarView(
        controller: _tabController, // 与 TabBar 共享同一个 TabController
        children: categories.map((category) {
          return _buildProductGrid(
              category.id ?? 0, myPointNotifier.value); // 根据分类显示不同的产品网格
        }).toList(),
      ),
    );
  }

  Widget _buildHeader(int curPoint) {
    return Container(
      padding: EdgeInsets.all(19.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$curPoint",
                    style: TextStyle(
                        color: AppTheme().wordPrimaryColor,
                        fontSize: 31.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '当前的积分',
                    style: TextStyle(
                        color: AppTheme().wordPrimaryColor,
                        fontSize: 15.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              AppLocalImage(
                path: UIAssets.source!.jfi,
                width: 85.w,
                height: 90.h,
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
            decoration: BoxDecoration(
                color: AppTheme().roundContainerColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0), //阴影y轴偏移量
                      blurRadius: 0, //阴影模糊程度
                      spreadRadius: 0 //阴影扩散程度
                      ),
                ]),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppLocalImage(
                      path: UIAssets.source!.cjflogo,
                      height: 40.h,
                      width: 40.w,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    AppLocalImage(
                      path: UIAssets.source!.cjf,
                      height: 40.h,
                      width: 110.w,
                    ),
                    const Spacer(),
                    GradientButton(
                      text: "去兑换",
                      vertical: 6.h,
                      horizontal: 12.w,
                      onPressed: (index) {
                        pushPage(context,
                            path: PagePath.exchangeCashPage,
                            ext: {"point": curPoint});
                      },
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  // 构建商品网格，带有下拉刷新功能
  Widget _buildProductGrid(int category, int curPoint) {
    return ProductWidget(
      sortId: category,
      onSelected: (productId) {
        pushPage(context,
            path: PagePath.pointProductDetailPage,
            ext: {"myPoint": curPoint, "productId": productId});
      },
    );
  }
}
