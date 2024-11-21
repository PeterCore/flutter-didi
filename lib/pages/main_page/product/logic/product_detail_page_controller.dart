import 'dart:convert';

import 'package:churn/router_config.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/product_info_model.dart';
import 'package:dk_net_work/models/product_list_model.dart';
import 'package:dk_net_work/net_work/result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailState {
  final ProductInfoModel? detail;
  final Productview? productview;
  final List? groupcbl;
  final Datum? item;
  ProductDetailState({
    this.detail,
    this.productview,
    this.groupcbl,
    this.item,
  });

  ProductDetailState copyWith({
    ProductInfoModel? detail,
    Productview? productview,
    List? groupcbl,
    Datum? item,
  }) {
    return ProductDetailState(
      detail: detail ?? this.detail,
      productview: productview ?? this.productview,
      groupcbl: groupcbl ?? this.groupcbl,
      item: item ?? this.item,
    );
  }
}

class ProductDetailController extends StateNotifier<ProductDetailState> {
  ProductDetailController(this.id) : super(ProductDetailState()) {
    loadProductDetails();
  }

  final String id;
  List _parseGroupcbl(String? groupcbl) {
    if (groupcbl == null || groupcbl.isEmpty) {
      return [];
    }
    Map<String, dynamic> obj = json.decode(groupcbl);
    return obj.values.toList();
  }

  Datum _parseItem(Productview? productview) {
    return Datum(
      title: productview?.title,
      dividendMethod: productview?.dividendMethod,
      qtje: productview?.qtje,
      zgje: productview?.zgje,
      insurance: productview?.insurance,
      jyrsy: productview?.jyrsy,
      shijian: productview?.shijian,
      cycle: productview?.cycle,
      hkfs: productview?.hkfs,
      xmjd: productview?.xmjd,
      endingtime: productview?.endingtime,
      presale: productview?.presale,
      ismake: productview?.ismake,
      categoryId: productview?.categoryId,
      presentLevelText: productview?.presentLevelText,
      id: productview?.id,
    );
  }

  Future<void> loadProductDetails() async {
    EasyLoading.show();
    final Result<ProductInfoModel> res = await getProductInfo({"id": id});
    res.ifSuccess((data) {
      final List groupcbl = _parseGroupcbl(data.productview?.groupcbl);
      Datum item = _parseItem(data.productview);
      state = state.copyWith(
        detail: data,
        productview: data.productview,
        groupcbl: groupcbl,
        item: item,
      );
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.toString());
    });
    EasyLoading.dismiss();
  }

  void onButtonPressed(context, type) {
    final productView = state.productview;
    // 购满
    if (productView!.xmjd! >= 100) {
      return;
    }
    // 升级自动获取
    if (productView.categoryId == 101) {
      pushPage(context, path: PagePath.memberShipLevelPage);
      return;
    }
    if (productView.presale == 1) {
      EasyLoading.showInfo("暂未开放", duration: const Duration(seconds: 3));
      return;
    }
    pushPage(context,
        path: PagePath.productBuyPage,
        ext: {"id": productView.id.toString(), "type": type});
  }
}

final productDetailProvider = StateNotifierProvider.autoDispose.family<
    ProductDetailController, ProductDetailState, String>((ref, id) {
  return ProductDetailController(id);
});
