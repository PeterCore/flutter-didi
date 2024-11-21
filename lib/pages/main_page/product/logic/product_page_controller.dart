import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dk_net_work/models/product_category_result_model.dart';
import 'package:dk_net_work/models/product_list_model.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/net_work/result.dart';
import 'package:dk_utils/dk_lib.dart';
class ProductPageState {
  final int selectedMainTabIndex;
  final int selectedSubTabIndex;
  final List<Map<String, dynamic>> mainTabs;
  final List<Map<String, dynamic>> subTabs;
  final List<Datum> items;
  final bool isLoading;
  final bool isLoadingMore;
  final String searchQuery;

  ProductPageState({
    this.selectedMainTabIndex = 0,
    this.selectedSubTabIndex = 0,
    this.mainTabs = const [],
    this.subTabs = const [],
    this.items = const [],
    this.isLoading = true,
    this.isLoadingMore = false,
    this.searchQuery = '',
  });

  ProductPageState copyWith({
    int? selectedMainTabIndex,
    int? selectedSubTabIndex,
    List<Map<String, dynamic>>? mainTabs,
    List<Map<String, dynamic>>? subTabs,
    List<Datum>? items,
    bool? isLoading,
    bool? isLoadingMore,
    String? searchQuery,
  }) {
    return ProductPageState(
      selectedMainTabIndex: selectedMainTabIndex ?? this.selectedMainTabIndex,
      selectedSubTabIndex: selectedSubTabIndex ?? this.selectedSubTabIndex,
      mainTabs: mainTabs ?? this.mainTabs,
      subTabs: subTabs ?? this.subTabs,
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

class ProductPageController extends StateNotifier<ProductPageState> {
  ProductPageController() : super(ProductPageState()) {
    _loadInitialData();
  }
  Future<void> _loadInitialData() async {
    await _fetchMainTabs();
    selectMainTab(0); // 触发请求
  }

  Future<void> updateSearchQuery(String query) async{
    state = state.copyWith(searchQuery: query);
    await _fetchProductList();
  }

  Future<void> selectMainTab(int index) async{
    final subList = state.mainTabs[index]['nextCategoryList'] ?? [];
    final subTabs = subList.map((category) {
          return {
            "name": category.name ?? '',
            "id": category.id,
          };
        }).toList() ??
        [];
    state = state.copyWith(
      selectedMainTabIndex: index,
      selectedSubTabIndex: 0,
      subTabs: [...subTabs],
      searchQuery: '',
      items: [],
    );
    await _fetchProductList();
  }

  Future<void> selectSubTab(int index) async{
    state = state.copyWith(
      selectedSubTabIndex: index,
      searchQuery: '',
      items: [],
    );
    await _fetchProductList();
  }

  Future<void> _fetchMainTabs() async {
    final Result<ProductCategoryResultModel> res = await getProducts();
    res.ifSuccess((data) {
      final mainTabs = data.productsCategory?.map((category) {
            return {
              "name": category.name ?? '',
              "id": category.id,
              "nextCategoryList": category.nextCategoryList ?? [],
            };
          }).toList() ??
          [];

      state = state.copyWith(mainTabs: mainTabs);
    });
  }

  Future<void> _fetchProductList() async {
      state = state.copyWith(isLoading: true);
      final Result<ProductListModel> res = await getProductList({
        "BID": state.mainTabs[state.selectedMainTabIndex]['id'],
        "id": state.subTabs.isEmpty ? state.mainTabs[state.selectedMainTabIndex]['id'] : state.subTabs[state.selectedSubTabIndex]['id'],
        "key": state.searchQuery,
        "page": 1,
      });
      res.ifSuccess((data) {
        if (data.status == 0) {
          final list = data.list?.data ?? [];
          state = state.copyWith(items: list);
        } else {
          EasyLoading.showError(data.msg ?? '');
        }
      });
      state = state.copyWith(isLoading: false);
  }

  Future<void> refreshItems() async {
    _fetchProductList();
  }

  Future<void> loadMoreItems() async {
    if (state.isLoadingMore) return;

    state = state.copyWith(isLoadingMore: true);
    try {
    } catch (e) {
      state = state.copyWith(isLoadingMore: false);
    }
  }
}

final productPageProvider =
    StateNotifierProvider.autoDispose<ProductPageController, ProductPageState>(
  (ref) => ProductPageController(),
);