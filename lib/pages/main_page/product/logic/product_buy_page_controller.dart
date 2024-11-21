import 'dart:convert';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/default_address_model.dart';
import 'package:dk_net_work/models/product_info_model.dart';
import 'package:dk_net_work/models/product_list_model.dart';
import 'package:dk_net_work/models/base_result_model.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_net_work/net_work/result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:churn/components/confirmation_dialog.dart';

class ProductBuyState {
  final ProductInfoModel? detail;
  final Productview? productview;
  final List? groupcbl;
  final Datum? item;
  final num? investmentAmount; // 投资金额
  final Map<String, double>? coupon; // 加息券
  final Map<String, dynamic>? make; // 代金券
  final String? buycode; // 拼团口令
  final String? fennum; // 拼团人数
  final AddressInfo? addressInfo;
  final bool? isShowGift;
  final bool? isShowPsw;
  final String? signatureUrl;
  ProductBuyState({
    this.detail,
    this.productview,
    this.groupcbl,
    this.item,
    this.investmentAmount,
    this.coupon,
    this.make,
    this.buycode,
    this.fennum,
    this.addressInfo,
    this.isShowGift,
    this.isShowPsw,
    this.signatureUrl,
  });
  ProductBuyState copyWith({
    ProductInfoModel? detail,
    Productview? productview,
    List? groupcbl,
    Datum? item,
    num? investmentAmount,
    Map<String, double>? coupon,
    Map<String, dynamic>? make,
    String? buycode,
    String? fennum,
    AddressInfo? addressInfo,
    String? signatureUrl,
    bool? isShowGift,
    bool? isShowPsw,
  }) {
    return ProductBuyState(
      detail: detail ?? this.detail,
      productview: productview ?? this.productview,
      groupcbl: groupcbl ?? this.groupcbl,
      item: item ?? this.item,
      investmentAmount: investmentAmount ?? this.investmentAmount,
      coupon: coupon ?? this.coupon,
      make: make ?? this.make,
      buycode: buycode ?? this.buycode,
      fennum: fennum ?? this.fennum,
      addressInfo: addressInfo ?? this.addressInfo,
      isShowGift: isShowGift ?? this.isShowGift,
      isShowPsw: isShowPsw ?? this.isShowPsw,
      signatureUrl: signatureUrl ?? this.signatureUrl,
    );
  }

  String get truncatedInvestmentEarnings {
    double value = (investmentAmount ?? 0) * (detail?.insurance ?? 0) / 100;
    String valueStr = value.toStringAsFixed(10);
    int dotIndex = valueStr.indexOf('.');
    if (dotIndex != -1 && valueStr.length > dotIndex + 2) {
      valueStr = valueStr.substring(0, dotIndex + 3);
    }
    return double.parse(valueStr).toString();
  }

  String get expectedEarning {
    num validInvestmentAmount = investmentAmount ?? 0;
    num jyrsy = num.tryParse(productview?.jyrsy ?? '') ?? 0;
    num shijian = num.tryParse(productview?.shijian ?? '') ?? 0;
    int cycle = productview?.cycle ?? 0;
    num adjustedCycle = cycle > 0 ? (shijian * cycle) : shijian;
    double earning = (validInvestmentAmount * jyrsy * adjustedCycle) / 100;
    return earning.toStringAsFixed(2);
  }

  String get calculateCouponExtMoney {
    num validInvestmentAmount = investmentAmount ?? 0;
    double shijian = double.tryParse(productview?.shijian ?? '') ?? 0;
    int cycle = productview?.cycle ?? 0;
    double adjustedCycle = cycle > 0 ? cycle.toDouble() : 1;
    double result = ((coupon?['money'] ?? 0) *
            validInvestmentAmount *
            shijian *
            adjustedCycle) /
        100;
    return result.toStringAsFixed(2);
  }

  Jfproduct get giftInfo {
    return detail?.jfproduct ?? const Jfproduct();
  }
}

class ProductBuyController extends StateNotifier<ProductBuyState> {
  final String id;

  ProductBuyController(this.id) : super(ProductBuyState()) {
    loadProductDetails();
  }
  Future<void> signAgreement(BuildContext context) async {
    if (state.addressInfo?.id != null) {
      updateIsShowGift(false);
      Navigator.pop(context);
      toSignAgreement(context);
    } else {
      EasyLoading.showError("请选择收货地址");
    }
  }
  Future<void> toSignAgreement(BuildContext context) async {
    final signatureUrl = await pushPage(context, path: PagePath.productContractPage, ext: {
        "amountPay": state.investmentAmount,
        "idPay": id,
        "make": state.make?['id'],
        "coupon": state.coupon?['id'],
        "shouhuodizhi": state.addressInfo,
        "productid": id,
        "productname": state.detail?.jfproduct?.title,
        "location": state.addressInfo?.location,
        "name": state.addressInfo?.name,
        "phone": state.addressInfo?.phone,
      });
      if (signatureUrl != null) {
        state = state.copyWith(
          isShowPsw: true,
          signatureUrl: signatureUrl.toString(),
        );
      }
  }
  void handlePay(BuildContext context, String pwd, String type) async {
    Map<String, dynamic> params = {
      "amountPay": state.investmentAmount,
      "idPay": id,
      "pwdPay": pwd,
      "sign_img": state.signatureUrl,
      "make": state.make?['id'],
      "coupon": state.coupon?['id'],
      "fennum": state.fennum,
      "buycode": state.buycode,
      "address_id": state.addressInfo?.id,
    };
    EasyLoading.show();
    if (type == 'create') {
      await handleCreate(context, params);
    } else if (type == 'join') {
      await handleJoin(context, params);
    } else if (type == 'normal') {
      await handleNormal(context, params);
    }
    updateIsShowPsw(false);
    EasyLoading.dismiss();
  }
  Future<void> handleNormal(context, params) async {
    // 普通
    final Result<BaseResultModel> res = await productNowToMoney(params);
    res.ifSuccess((data) {
      Navigator.pop(context);
      ConfirmationDialog.show(context: context, title: "提示", content: "投资成功！请进入“我的主页”-“我的投资”查看投资合同", confirmText: "确定", cancelText: "取消", onConfirm: (){
      pushPage(context, path: PagePath.productNormalRecordsPage);
    });
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
  }
  Future<void> handleCreate(context, params) async {
    // 创建
    final Result<BaseResultModel> res = await productJoinGroup(params);
    res.ifSuccess((data) {
      Navigator.pop(context);
      pushPage(context, path: PagePath.productGroupRecordsPage, ext: {"type": "0"});
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
  }
  Future<void> handleJoin(context, params) async {
    // 加入
    final Result<BaseResultModel> res = await productJoinGroup(params);
    res.ifSuccess((data) {
      Navigator.pop(context);
      pushPage(context, path: PagePath.productGroupRecordsPage, ext: {"type": "1"});
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
  }
  
  Future<void> getAddressInfoById(int id) async {
    EasyLoading.show();
    final res = await getUserDefaultAddressInfo(productId: id);
    res.ifSuccess((data) {
      state = state.copyWith(
        addressInfo: data.info ?? AddressInfo(),
        isShowGift: true,
      );
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
    EasyLoading.dismiss();
  }
  Future<void> goAddressPage(BuildContext context) async {
    state = state.copyWith(
      isShowGift: false,
    );
    Navigator.pop(context);
    final pickAddressId =  await pushPage(context, path: PagePath.addressManagerPage, ext: {"isPick": "true"});
    if (pickAddressId != null) {
      getAddressInfoById(int.parse(pickAddressId.toString()));
    } else {
       state = state.copyWith(
        isShowGift: true,
      );
    }
  }
  void buyProduct(String type, BuildContext context) {
    if (type == 'join' && (state.buycode == null || state.buycode!.isEmpty)) {
      EasyLoading.showError("请输入拼团口令！");
      return;
    }
    if (type == 'create' && (state.fennum == null || state.fennum!.isEmpty)) {
      EasyLoading.showError("请输入拼团人数！");
      return;
    }
    if (type == 'normal' && (state.investmentAmount ?? 0) == 0) {
      EasyLoading.showError("请输入投资金额！");
      return;
    }
    // 接口检查数据
    checkCanBuy(type, context);
  }

  Future<void> checkCanBuy(String type, BuildContext context) async {
    EasyLoading.show();
    final Result<BaseResultModel> res = await productCheckCanBuy({
      "product_id": id,
      "buy_type": type == 'normal' ? 'common' : 'group',
      "buycode": state.buycode,
      "amount": state.investmentAmount,
      "fennum": state.fennum,
      "coupon": state.coupon?['id'],
      "make": state.make?['id'],
      "group_type": type == 'create' ? 'create' : type == 'join' ? 'join' :  null,
      "group_buy_code": state.buycode,
      "group_count": state.fennum,
    });
    res.ifSuccess((data) async {
      if (data.status == 0) {
        if ((state.productview?.jfpid ?? 0) > 0) {
          await getDefaultAddress();
        } else {
          if (state.detail?.esignature == 1) {
            toSignAgreement(context);
          } else {
            updateIsShowPsw(true);
          }
        }
      } else {
        EasyLoading.showError(data.msg ?? "");
      }

    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
    });
    EasyLoading.dismiss();
  }

  List _parseGroupcbl(String? groupcbl) {
    if (groupcbl == null || groupcbl.isEmpty) {
      return [];
    }
    Map<String, dynamic> obj = json.decode(groupcbl);
    return obj.values.toList();
  }

  void updateInvestmentAmount(String value) {
    state = state.copyWith(
      investmentAmount: num.tryParse(value) ?? 0,
    );
  }

  void updateCoupon(Map<String, double> coupon) {
    state = state.copyWith(
      coupon: coupon,
    );
  }

  void updateMake(Map<String, dynamic> make) {
    state = state.copyWith(
      make: make,
    );
  }

  void updateBuycode(String value) {
    state = state.copyWith(
      buycode: value,
    );
  }

  void updateFennum(String value) {
    state = state.copyWith(
      fennum: value,
    );
  }

  void updateIsShowGift(bool value) {
    state = state.copyWith(
      isShowGift: value,
    );
  }

  void updateIsShowPsw(bool value) {
    state = state.copyWith(
      isShowPsw: value,
    );
  } 

  double calculateInvestmentEarnings({
    required double rate,
  }) {
    Productview productview = state.productview!;
    num investmentAmount = state.investmentAmount ?? 0;
    num jyrsy = num.tryParse(productview.jyrsy ?? '') ?? 0;
    num shijian = num.tryParse(productview.shijian ?? '') ?? 0;
    num cycle = productview.cycle ?? 0;
    final num adjustedCycle = cycle > 0 ? shijian * cycle : shijian;
    final double rateEarnings = (investmentAmount * rate * adjustedCycle) / 100;
    final double jyrsyEarnings =
        (investmentAmount * jyrsy * adjustedCycle) / 100;
    return rateEarnings + jyrsyEarnings;
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

  Future<void> getDefaultAddress() async {
    EasyLoading.show();
    final Result<DefaultAddressModel> res = await getDefaultAddressInfo();
    res.ifSuccess((data) {
      state = state.copyWith(
        addressInfo: data.info ?? AddressInfo(),
        isShowGift: true,
      );
    });
    res.ifFailure((e) {
      EasyLoading.showError(e.message);
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
    // 预售
    if (productView.presale == 1) {
      EasyLoading.showInfo("暂未开放", duration: const Duration(seconds: 3));
      return;
    }
    pushPage(context,
        path: PagePath.productBuyPage,
        ext: {"id": productView.id.toString(), "type": type});
  }
}
final productBuyProvider =
    StateNotifierProvider.autoDispose.family<ProductBuyController, ProductBuyState, String>(
        (ref, id) {
  return ProductBuyController(id);
});
