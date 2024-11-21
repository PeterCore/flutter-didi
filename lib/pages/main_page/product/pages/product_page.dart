import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:churn/components/base_container.dart';
import '../widgets/product_card_widget.dart';
import '../logic/product_page_controller.dart';
import 'package:dk_utils/constants/app_theme.dart';

class ProductPage extends ConsumerStatefulWidget {
  const ProductPage({super.key});

  @override
  ConsumerState<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  late TabController _mainTabController;
  late TabController _subTabController;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _mainTabController = TabController(length: 0, vsync: this);
    _subTabController = TabController(length: 0, vsync: this);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _mainTabController.dispose();
    _subTabController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref.read(productPageProvider.notifier).loadMoreItems();
    }
  }

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productPageProvider);
    final productNotifier = ref.read(productPageProvider.notifier);
    final TextEditingController textTextFieldController =
        TextEditingController(text: productState.searchQuery);

    if (_mainTabController.length != productState.mainTabs.length) {
      _mainTabController.dispose();
      _mainTabController = TabController(
        length: productState.mainTabs.length,
        vsync: this,
        initialIndex: productState.selectedMainTabIndex,
      );
      _mainTabController.addListener(() {
        if (_mainTabController.animation!.value ==
            _mainTabController.index.toDouble()) {
          productNotifier.selectMainTab(_mainTabController.index);
        }
      });
    }

    if (_subTabController.length != productState.subTabs.length) {
      _subTabController.dispose();
      _subTabController = TabController(
        length: productState.subTabs.length,
        vsync: this,
        initialIndex: productState.selectedSubTabIndex,
      );
      _subTabController.addListener(() {
        if (_subTabController.animation!.value ==
            _subTabController.index.toDouble()) {
          productNotifier.selectSubTab(_subTabController.index);
        }
      });
    }

    return BaseContainer(
      title: "",
      isAppBar: false,
      backgroundColor: AppTheme().themeBackGroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductSearchBarWidget(
              productNotifier, textTextFieldController),
          _buildProductMainTabBarWidget(productState),
          _buildProductListWidget(productState, productNotifier),
        ],
      ),
    );
  }

  Widget _buildProductSearchBarWidget(ProductPageController productNotifier,
      TextEditingController textTextFieldController) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: TextField(
        controller: textTextFieldController,
        onSubmitted: (value) => productNotifier.updateSearchQuery(value),
        decoration: InputDecoration(
          hintText: '输入项目名称',
          hintStyle: const TextStyle(color: Color(0xFF5C5D69)),
          prefixIcon: const Icon(Icons.search, color: Color(0xFF5C5D69)),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        ),
        style: const TextStyle(color: Color(0xFF15141C)),
      ),
    );
  }

  Widget _buildProductMainTabBarWidget(ProductPageState productState) {
    return TabBar(
      controller: _mainTabController,
      tabs: productState.mainTabs.map((tab) => Tab(text: tab['name'])).toList(),
      labelColor: Colors.white,
      labelStyle: TextStyle(fontSize: 16.sp),
      unselectedLabelStyle: TextStyle(fontSize: 14.sp),
      unselectedLabelColor: Colors.white.withOpacity(0.7),
      indicatorColor: Colors.white,
      labelPadding: EdgeInsets.only(right: 66.w),
      isScrollable: true,
    );
  }

  Widget _buildProductListWidget(
      ProductPageState productState, ProductPageController productNotifier) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
        margin: EdgeInsets.only(top: 16.h),
        decoration: _containerDecoration(),
        child: productState.subTabs.isEmpty
            ? _buildListView(productState, productNotifier)
            : _buildTabBarView(productState, productNotifier),
      ),
    );
  }

  Widget _buildTabBarView(
      ProductPageState productState, ProductPageController productNotifier) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          tabAlignment: TabAlignment.start,
          controller: _subTabController,
          isScrollable: true,
          indicator: BoxDecoration(
            color: const Color(0xFF15141C),
            borderRadius: BorderRadius.circular(24),
          ),
          labelColor: Colors.white,
          labelPadding: const EdgeInsets.only(right: 0),
          unselectedLabelColor: Colors.black,
          tabs: productState.subTabs
              .map(
                (tab) => _buildTab(
                  tab['name'],
                  isSelected: productState.selectedSubTabIndex ==
                      productState.subTabs.indexOf(tab),
                ),
              )
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _subTabController,
            children: productState.subTabs
                .map((_) => _buildListView(productState, productNotifier))
                .toList(),
          ),
        )
      ],
    );
  }

  Widget _buildTab(String text, {bool isSelected = false}) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          // color: !isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListView(
      ProductPageState productState, ProductPageController productNotifier) {
    return Container(
      margin: EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w),
      decoration: _containerDecoration(),
      child: RefreshIndicator(
        onRefresh: productNotifier.refreshItems,
        child: productState.items.isEmpty && !productState.isLoading
            ? ListView(
                children: [
                   SizedBox(
                    height: 600.h,
                    child: const Center(child: Text('暂无数据')),
                  ),
                ],
              )
            : ListView.builder(
                controller: _scrollController,
                itemCount: productState.items.length +
                    (productState.isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index < productState.items.length) {
                    return ProductCardWidget(item: productState.items[index]);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
      ),
    );
  }

  ShapeDecoration _containerDecoration() {
    return const ShapeDecoration(
      color: Color(0xFFF0F3F5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
    );
  }
}
