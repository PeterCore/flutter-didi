import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dk_net_work/models/product_proview_contract_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';

final productContractProvider = StateNotifierProvider.family<
    ProductContractController,
    ProductContractState,
    (Map<String, dynamic>, String)>((ref, params) {
    final (data, type) = params; // type: buy, look, sign
  return ProductContractController(data: data, type: type);
});

class ProductContractState {
  final String? content;
  ProductContractState({this.content});

  ProductContractState copyWith({String? content}) {
    return ProductContractState(
      content: content ?? this.content,
    );
  }
}

class ProductContractController extends StateNotifier<ProductContractState> {
  final Map<String, dynamic> data;
  final String type;
  ProductContractController({required this.data, required this.type})
      : super(ProductContractState()) {
    if (type == 'buy') {
      getProductPreviewContractData();
    }
    if (type == 'look') {
      getProductContractInfoData();
    }
    if (type == 'sign') {
      getProductContractInfoData();
    }
  }
  Future<void> getProductPreviewContractData() async {
    EasyLoading.show();
    final result = await getProductPreviewContract({...data});
    result.ifSuccess((res) {
      state = state.copyWith(content: res.content);
    });
    result.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
    EasyLoading.dismiss();
  }
  Future<void> getProductContractInfoData() async {
    EasyLoading.show();
    final result = await getProductContractInfo({...data});
    result.ifSuccess((res) {
      state = state.copyWith(content: res.data?.content ?? '');
    });
    result.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
    EasyLoading.dismiss();
  }
}
