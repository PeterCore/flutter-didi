import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_net_work/models/user_tender_model.dart';
import 'package:churn/router_config.dart';
import 'package:churn/common/load_down_file/file_down_load.dart'
    if (dart.library.io) 'package:churn/common/load_down_file/file_down_load_mobile.dart'
    if (dart.library.html) 'package:churn/common/load_down_file/file_down_load_web.dart';

class ProductNormalRecordsState {
  final UserTenderModel info;
  final List<Map<String, dynamic>> investments;
  final bool isLoading;
  final bool hasMore;
  final int page;

  ProductNormalRecordsState({
    required this.info,
    required this.investments,
    required this.isLoading,
    required this.hasMore,
    required this.page,
  });

  ProductNormalRecordsState copyWith({
    List<Map<String, dynamic>>? investments,
    UserTenderModel? info,
    bool? isLoading,
    bool? hasMore,
    int? page,
  }) {
    return ProductNormalRecordsState(
      investments: investments ?? this.investments,
      info: info ?? this.info,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
    );
  }
}

class ProductNormalRecordsController extends StateNotifier<ProductNormalRecordsState> {
  final ScrollController scrollController = ScrollController();

  ProductNormalRecordsController() : super(ProductNormalRecordsState(
    investments: [],  
    info: const UserTenderModel(),
    isLoading: false,
    hasMore: true,
    page: 0,
  )) {
    scrollController.addListener(_onScroll);
    loadMoreData();
  }

  Future<void> jieChuInvest(BuildContext context, {required String id, required String pwdPay}) async {
    final res = await productJieChuInvest({
      'id': id,
      'pay_passworld': pwdPay,
    });
    res.ifSuccess((data) {
      EasyLoading.showSuccess(data.msg ?? "解除成功");
      refreshData();
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
  }
  
  Future<void> signContract(BuildContext context, {required String id, required String pwdPay, required String signImg}) async {
    final res = await productSignContract({
      'contract_no': id,
      'pwdPay': pwdPay,
      'sign_img': signImg,
    });
    res.ifSuccess((data) {
      EasyLoading.showSuccess("补签成功");
      Navigator.of(context).pop();
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
  }


  Future<void> downloadContractData(BuildContext context, String id) async {
    final res = await downLoadLoanContract(contractNo: id);
    res.ifSuccess((data) async {
      final fileDownLoadImpl = FileDownLoadImpl();
      await fileDownLoadImpl.saveFile(
          data, "${id}.pdf");
      EasyLoading.showSuccess("下载成功");
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
  }
  void toContractPage(BuildContext context, String id) {
    pushPage(context, path: PagePath.productContractPage, ext: {
      'contract_no': id,
      'type': 'look',
      'sign':  false,
   });
  }

  void toSignContractPage(BuildContext context, String id) async {
    final res = await pushPage(context, path: PagePath.productContractPage, ext: {
      'contract_no': id,
      'type': 'sign',
      'sign':  true,
    });
    if (res != null) {
      refreshData();
    }
  }
  void _onScroll() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      loadMoreData();
    }
  }

  Future<void> loadMoreData() async {
    if (state.isLoading || !state.hasMore) return;
    state = state.copyWith(isLoading: true, page: state.page + 1);
    final res = await getProductTender({
      'page': state.page,
    });

    res.ifSuccess((data) {
      final newInvestments = data.list?.data?.map((e) => e.toJson()) ?? [];
      final updatedInvestments = [...state.investments, ...newInvestments];
      state = state.copyWith(
        info: data,
        investments: updatedInvestments,
        isLoading: false,
        hasMore: updatedInvestments.length < (data.list?.total ?? 0), // For demo purposes, limit to 50 items
      );
    });
    res.ifFailure((error) {
      state = state.copyWith(isLoading: false);
    });
  }

  Future<void> refreshData() async {
    state = state.copyWith(
      info: const UserTenderModel(),
      investments: [],
      isLoading: false,
      hasMore: true,
      page: 0,
    );
    await loadMoreData();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

final productNormalRecordsControllerProvider = StateNotifierProvider.autoDispose<ProductNormalRecordsController, ProductNormalRecordsState>((ref) {
  return ProductNormalRecordsController();
});