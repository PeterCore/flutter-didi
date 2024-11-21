import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dk_net_work/http_provider/rest_client.dart';
import 'package:dk_net_work/models/account_detail_model.dart';
import 'package:dk_net_work/models/check_in_result.dart';
import 'package:dk_net_work/models/default_address_model.dart';
import 'package:dk_net_work/models/kyc_certification.dart';
import 'package:dk_net_work/models/mine_point_result_model.dart';
import 'package:dk_net_work/models/new_user_info.dart';
import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_net_work/models/transfer_config_model.dart';
import 'package:dk_net_work/models/transfer_withdraws_record_list.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_net_work/models/withdraws_config_model.dart';
import 'package:dk_net_work/models/yu_e_bao_config_model.dart';

import '../app_provider.dart';
import '../models/address_info_list_model.dart';
import '../models/app_download_info_model.dart';
import '../models/app_update_info_model.dart';
import '../models/base_result_model.dart';
import '../models/captcha_config_model.dart';
import '../models/category_product_result_model.dart';
import '../models/check_in_success_result.dart';
import '../models/common_config.dart';
import '../models/content_detail_result.dart';
import '../models/create_address_result_model.dart';
import '../models/exchange_recode_result.dart';
import '../models/grouplist_model.dart';
import '../models/guides_user_result_model.dart';
import '../models/home_result_model.dart';
import '../models/invite_friend_config_model.dart';
import '../models/ip_config_model.dart';
import '../models/link_page_result.dart';
import '../models/loan_contract_content_model.dart';
import '../models/loan_contract_detail_info_model.dart';
import '../models/loan_contract_record_result.dart';
import '../models/loan_status_model.dart';
import '../models/lottery_config_model.dart';
import '../models/lottery_record_list.dart';
import '../models/lottery_result_model.dart';
import '../models/member_ship_level.dart';
import '../models/new_list_result_model.dart';
import '../models/point_product_detail_model.dart';
import '../models/point_product_model.dart';
import '../models/product_category_result_model.dart';
import '../models/product_contract_info_model.dart';
import '../models/product_info_model.dart';
import '../models/product_list_model.dart';
import '../models/product_proview_contract_model.dart';
import '../models/promotion_member_list.dart';
import '../models/promotion_records_model.dart';
import '../models/recharge_recode_model.dart';
import '../models/recipients_records_result.dart';
import '../models/redemption_record_result.dart';
import '../models/resigster_result_model.dart';
import '../models/setting_pay_psw_result.dart';
import '../models/setting_psw_result_model.dart';
import '../models/sign_in_result_model.dart';
import '../models/team_level_result.dart';
import '../models/transaction_detail_model.dart';
import '../models/upload_image_result_model.dart';
import '../models/user_info_data.dart';
import '../models/user_tender_model.dart';
import '../models/verify_captcha_result.dart';
import '../models/verify_p_keys_result_model.dart';
import '../models/view_pk_result.dart';
import '../models/welfare_coupon_result_model.dart';
import '../models/win_list_model.dart';
import '../models/yu_e_bao_transactions_model.dart';
import '../net_work/result.dart';

// Future<Result<BaseResultModel>> productJieChuInvest(
//     Map<String, dynamic> params) {}
Future<Result<AppUpdateInfoModel>> getAppUpdateInfo() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getAppUpdateInfo(),
  );
}

Future<Result<AppDownloadInfoModel>> getAppDownloadList() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getAppDownloadList(),
  );
}

Future<Result<BaseResultModel>> productJieChuInvest(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .productJieChuInvest(params),
  );
}

Future<Result<BaseResultModel>> productSignContract(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .productSignContract(params),
  );
}

Future<Result<List<int>>> downLoadProductContract(String contractNo) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .downLoadProductContract(contractNo),
  );
}

Future<Result<ProductContractInfoModel>> getProductContractInfo(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductContractInfo(params),
  );
}

Future<Result<UserTenderModel>> getProductTender(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductTender(params),
  );
}

Future<Result<GrouplistModel>> getProductJoinGroupList(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductJoinGroupList(params),
  );
}

Future<Result<GrouplistModel>> getProductGroupList(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductGroupList(params),
  );
}

Future<Result<BaseResultModel>> productNowToMoney(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .productNowToMoney(params),
  );
}

Future<Result<BaseResultModel>> productJoinGroup(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .productJoinGroup(params),
  );
}

Future<Result<BaseResultModel>> productGroupBuy(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .productGroupBuy(params),
  );
}

Future<Result<ProductProviewContractModel>> getProductPreviewContract(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductPreviewContract(params),
  );
}

Future<Result<BaseResultModel>> productCheckCanBuy(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .productCheckCanBuy(params),
  );
}

Future<Result<ProductCategoryResultModel>> getProducts() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getProducts(),
  );
}

Future<Result<ProductListModel>> getProductList(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductList(params),
  );
}

Future<Result<ProductInfoModel>> getProductInfo(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getProductInfo(params),
  );
}

Future<Result<IpConfigModel>> fetchIpConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .fetchIpConfig(),
  );
}

Future<Result<ResigsterResultModel>> registerUser(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .register(params),
  );
}

///密钥登录
Future<Result<VerifyPKeysResultModel>> verifyPkLogin(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .verifyPKeys(params),
  );
}

///密钥登录
Future<Result<BaseResultModel>> verifyPwdPk(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .verifyPwdPKeys(params),
  );
}

Future<Result<SignInResultModel>> signIn(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .signIn(params),
  );
}

Future<Result<SettingPswResultModel>> forgetPsw(Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .forgetPsw(params),
  );
}

Future<Result<HomeResultModel>> fetchHomeInfo() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getHomeInfo(),
  );
}

Future<Result<NewListResultModel>> fetchNewList({int id = 65}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getNewsList(id, "2"),
  );
}

/// 获取滑块配置
Future<Result<CaptchaConfigModel>> getCaptchaConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getCaptchaConfig(),
  );
}

///验证滑块
Future<Result<VerifyCaptchaResult>> verifyCaptchaConfig(
    {String captchaId = "", double x = 0, double y = 0, String userName = ''}) {
  final params = {
    "captcha_id": captchaId,
    "x": x,
    "y": y,
    "username": userName
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .verifyCaptchaPath(params),
  );
}

/// 获取公共属性
Future<Result<CommonConfig>> getCommonConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getCommonConfig(),
  );
}

/// 获取公共属性
Future<Result<UserInfoData>> getUserInfo() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getUserInfo(),
  );
}

/// 获取个人中心资料
Future<Result<NewUserInfoData>> getNewUserInfo() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getNewUserInfo(),
  );
}

///设置支付密码
Future<Result<SettingPayPswResult>> settingPayPsw(
    {String newpass = "", String renewpass = ""}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .settingPayPsw({
      "newpass": newpass,
      "renewpass": renewpass,
    }),
  );
}

///修改支付密码
Future<Result<SettingPayPswResult>> modifyPayPsw(
    {String newpass = "",
    String renewpass = "",
    String pass = "",
    int type = 1}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .settingPayPsw({
      "type": type,
      "pass": pass,
      "newpass": newpass,
      "renewpass": renewpass,
    }),
  );
}

/// 获取实名认证
Future<Result<KycCertification>> getKycInfo() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getKyc(),
  );
}

/// 获取实名认证
Future<Result<UploadImageResultModel>> uploadImage(List<File> files) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .uploadMultipleFiles(files),
  );
}

Future<Result<UploadImageResultModel>> uploadUintListImage(
    List<MultipartFile> files) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .uploadUint8ListMultipleFiles(files),
  );
}

///提交身份证信息
Future<Result<SettingPayPswResult>> commitIdCard(
    {String realname = "",
    String card = "",
    String zm = "",
    String fm = "",
    String sc = ""}) {
  final params = {"realname": realname, "card": card};
  if (zm.isNotEmpty) {
    params.addAll({"sfz_zm": zm});
  }
  if (fm.isNotEmpty) {
    params.addAll({"sfz_fm": fm});
  }
  if (sc.isNotEmpty) {
    params.addAll({"sfz_sc": sc});
  }
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .commitIdCard(params),
  );
}

/// 获取会员等级
Future<Result<MemberShipLevel>> getMemberLevel() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getMemberLevel(),
  );
}

Future<Result<CategoryProductResultModel>> getCategory({String sortid = "3"}) {
  final params = {"sortid": sortid};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getCategory(params),
  );
}

Future<Result<RedemptionRecordResult>> getRedemptionRecord(
    Map<String, dynamic> params) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getRedemptionRecord(params),
  );
}

Future<Result<PointProductModel>> getPointProduct(
    {int page = 1, int sortid = 0}) {
  final params = {"page": page, "sortid": sortid};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getPointProduct(params),
  );
}

Future<Result<PointProductDetailModel>> getPointProductDetail(
    {int productId = 0}) {
  final params = {"id": productId};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getPointProductDetail(params),
  );
}

Future<Result<UserDefaultAddressInfo>> getUserDefaultAddressInfo(
    {int productId = 0}) {
  final params = {"id": productId};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getUserDefaultAddressInfo(params),
  );
}

Future<Result<CreateAddressResultModel>> setDefaultAddress({String id = ""}) {
  final params = {"id": id};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .setDefaultAddress(params),
  );
}

Future<Result<AddressInfoListModel>> getAddressInfoList(
    {Map<String, dynamic> params = const {}}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getAddressList(params),
  );
}

Future<Result<CreateAddressResultModel>> deleteAddress(
    {int id = 0, String pwdPay = ''}) {
  final params = {"id": id, "pwdPay": pwdPay};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .deleteAddress(params),
  );
}

Future<Result<ExchangeRecodeResult>> getExchangeRecodeList({int page = 1}) {
  final params = {"page": page};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .exchangeRecode(params),
  );
}

Future<Result<CreateAddressResultModel>> createAddressInfo({
  String name = "",
  String phone = "",
  String address = "",
  String location = "",
  int isDefault = 0,
  String pwdPay = "",
}) {
  final params = {
    "name": name,
    "phone": phone,
    "address": address,
    "location": location,
    "is_default": isDefault,
    "pwdPay": pwdPay,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .createAddressInfo(params),
  );
}

// productid: ths.product_id,
// name: ths.product_user == this.form.name_mask ? this.form.name : ths.product_user,
// pwdPay: ths.password,
// phone: ths.product_mobile == this.form.phone_mask ? this.form.phone : ths.product_mobile,
// shouhuodizhi: ths.product_address == this.form.address_mask ? this.form.address : ths.product_address,
// location: ths.form.location,
// productname: ths.product_text,
// number: ths.product_sum,

Future<Result<CreateAddressResultModel>> exchangePointProduct(
    {String productName = "",
    String name = "",
    String phone = "",
    String address = "",
    String location = "",
    int productId = 0,
    String pwdPay = "",
    int number = 1}) {
  final params = {
    "name": name,
    "phone": phone,
    "shouhuodizhi": address,
    "location": location,
    "productid": productId,
    "number": number,
    "pwdPay": pwdPay,
    "productname": productName,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .exchangePoint(params),
  );
}

Future<Result<CreateAddressResultModel>> updateAddressInfo({
  String name = "",
  String phone = "",
  String address = "",
  String location = "",
  int id = 0,
  String pwdPay = "",
}) {
  final params = {
    "name": name,
    "phone": phone,
    "address": address,
    "location": location,
    "id": id,
    "pwdPay": pwdPay,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .updateAddressInfo(params),
  );
}

Future<Result<DefaultAddressModel>> getDefaultAddressInfo() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getDefaultAddress(),
  );
}

Future<Result<MinePointResultModel>> getMyPointInfo() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getMyPoint(),
  );
}

Future<Result<BaseResultModel>> pointExchange(
    {int point = 0, String pwdPay = ""}) {
  final params = {"number": point, "pwdPay": pwdPay};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .pointExchangeCash(params),
  );
}

Future<Result<WelfareCouponResultModel>> getCouponLogs(
    {int page = 1, int sortid = 0, int type = 1}) {
  final params = {"page": page, "sortid": sortid, "type": type};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getCouponLogs(params),
  );
}

Future<Result<OnlineRechargeTypeModel>> getOnlineRechargeTypeList() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getOnlineRechargeTypeList(),
  );
}

Future<Result<BaseResultModel>> getUSDTInfo() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getUSDTInfo(),
  );
}

Future<Result<BaseResultModel>> commitUSDT({
  String paymentId = "",
  String upFile = "",
  String usdtLian = "",
  String amount = "",
  String address = "",
}) {
  final params = {
    "paymentid": paymentId,
    "upfile": upFile,
    "usdtlian": usdtLian,
    "amount": amount,
    "fkname": address
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .commitUSDT(params),
  );
}

Future<Result<BaseResultModel>> commitCNY({
  String paymentId = "",
  String upFile = "",
  String amount = "",
  String name = "",
}) {
  final params = {
    "paymentid": paymentId,
    "upfile": upFile,
    "amount": amount,
    "fkname": name
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .commitCNY(params),
  );
}

Future<Result<RechargeRecodeModel>> getRechargeRecode({int page = 1}) {
  final params = {"page": page};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getRechargeRecode(params),
  );
}

Future<Result<TransferConfigModel>> getTransferConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getTransferConfig(),
  );
}

Future<Result<BaseResultModel>> commitTransfer(
    {int txOut = 1,
    int txIn = 1,
    String txAmount = "",
    String txName = "",
    String pwd = "",
    String receiveAccount = ""}) {
  final param = {
    "cardid": txOut,
    "zhuanid": txIn,
    "zhuanmoney": txAmount,
    "tname": txName,
    "paypwd": pwd,
    "zhuanuser": receiveAccount
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .commitTransfer(param),
  );
}

Future<Result<TransferWithdrawsRecordList>> getTransferWithdrawsRecord(
    {int page = 1, int sortId = 1}) {
  final params = {
    "page": page,
    "sortid": sortId,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getTransferWithdrawsRecord(params),
  );
}

Future<Result<YueBaoConfigModel>> getYueBaoConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getYueBaoConfig(),
  );
}

Future<Result<YueBaoTransactionsModel>> getYueBaoTranscationsList(
    {int page = 1}) {
  final params = {"page": page, "sortid": 5, "id": "all"};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getYueBaoTranscations(params),
  );
}

Future<Result<BaseResultModel>> yuEBaoTxIn(
    {String txInCash = "", String pwd = ""}) {
  final params = {
    "money": txInCash,
    "pay_passworld": pwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .yueBaoTxIn(params),
  );
}

Future<Result<BaseResultModel>> yuEBaoTxOut(
    {String txOutCash = "", String pwd = ""}) {
  final params = {
    "money": txOutCash,
    "pay_passworld": pwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .yueBaoTxOut(params),
  );
}

Future<Result<WithdrawsConfigModel>> getWithdrawsConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getWithdrawsConfig(),
  );
}

Future<Result<BaseResultModel>> bindBankCard(
    {String bankName = "",
    String bankAddress = "",
    String bankCode = "",
    String region = "",
    String pwd = ""}) {
  final params = {
    "bankname": bankName,
    "bankaddress": bankAddress,
    "bankcode": bankCode,
    "ssxzStr": region,
    "pay_passworld": pwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .bindBankCard(params),
  );
}

Future<Result<BaseResultModel>> bindZhiFuBaoAccount({
  String account = "",
  String pwd = "",
}) {
  final params = {
    "email": account,
    "pay_passworld": pwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .bindZhiFuBaoAccount(params),
  );
}

Future<Result<BaseResultModel>> bindDexWallet({
  String dexWalletType = "",
  String address = "",
  String pwd = "",
}) {
  final params = {
    "usdtlian": dexWalletType,
    "usdtadr": address,
    "pay_passworld": pwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .bindDexWallet(params),
  );
}

Future<Result<BaseResultModel>> commitWithdraws({
  String amount = "",
  int cardId = 0,
  String paypwd = "",
}) {
  final params = {
    "amount": amount,
    "cardid": cardId,
    "paypwd": paypwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .commitWithdraws(params),
  );
}

Future<Result<BaseResultModel>> modifySignInPwd(
    {String pwdOrPk = "",
    String newPwd = "",
    String renewPwd = "",
    int type = 0}) {
  final params = {
    "pass": pwdOrPk,
    "newpass": newPwd,
    "renewpass": renewPwd,
    "type": type
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .modifySignInPwd(params),
  );
}

Future<Result<LotteryConfigModel>> getLotteryConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getLotteryConfig(),
  );
}

Future<Result<LotteryResultModel>> getLotteryResult() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getLotteryResult(),
  );
}

Future<Result<WinListModel>> getWinList() {
  return Result.guardFuture(
    () async =>
        RestClient(AppInstanceRestClient.instance!.getInstance()).getWinList(),
  );
}

Future<Result<LotteryRecordList>> getLotteryRecord(
    {int page = 1, int type = 0}) {
  final params = {"page": page, "type": type};
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getLotteryRecord(params),
  );
}

Future<Result<AccountDetailModel>> getAccountDetail() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getAccountDetail(),
  );
}

Future<Result<InviteFriendConfigModel>> getInviteFriendConfig() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getInviteFriendConfig(),
  );
}

Future<Result<TransactionDetailModel>> getTransactionDetailList(
    {int page = 1, int sortId = 1, String times = "0"}) {
  final params = {
    "page": page,
    "sortid": sortId,
    "times": times,
    "id": "all",
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getTransactionDetail(params),
  );
}

Future<Result<PromotionRecordsModel>> getPromotionRecords() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getPromotionRecords(),
  );
}

Future<Result<PromotionMemberList>> getPromotionMemberList(
    {int page = 1, int lerve = 1, String sokey = ""}) {
  final params = {
    "page": page,
    "lerve": lerve,
    "sokey": sokey,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getPromotionMembers(params),
  );
}

Future<Result<LoanStatusModel>> getLoanStatus() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getLoanStatus(),
  );
}

Future<Result<BaseResultModel>> applyLoan(
    {String money = "", String pwd = "", String sign = ""}) {
  final params = {
    "money": money,
    "pay_passworld": pwd,
    "sign_img": sign,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .applyLoan(params),
  );
}

Future<Result<LoanContractContentModel>> checkLoanContract(
    {String money = ""}) {
  final params = {
    "money": money,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .checkLoanContract(params),
  );
}

Future<Result<LoanContractRecordResult>> getLoanContractRecords(
    {int page = 1, String status = ""}) {
  final params = {
    "page": page,
    "status": status,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getLoanContractRecords(params),
  );
}

Future<Result<List<int>>> downLoadLoanContract({String contractNo = ""}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .downLoadLoanContract(contractNo),
  );
}

Future<Result<LoanContractDetailInfoModel>> getLoanContractDetail(
    {String contractNo = ""}) {
  final params = {
    "contract_no": contractNo,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getLoanContractDetail(params),
  );
}

Future<Result<BaseResultModel>> earlyRepayLoan(
    {String money = "", String pwd = "", String contractNo = ""}) {
  final params = {
    "money": money,
    "pay_passworld": pwd,
    "bianhao": contractNo,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .earlyRepayLoan(params),
  );
}

Future<Result<BaseResultModel>> repayLoan({
  String money = "",
  String pwd = "",
}) {
  final params = {
    "money": money,
    "pay_passworld": pwd,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .repayLoan(params),
  );
}

Future<Result<GuidesUserResultModel>> getUseGuide({String version = "2"}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .useGuidePath(version),
  );
}

Future<Result<LinkPageResult>> getSinglePage({String links = ""}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .singlePage(links, "2"),
  );
}

Future<Result<TeamLevelResult>> getMemberLevels() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getMemberLevels(),
  );
}

Future<Result<CheckInResult>> fetchCheckInInfo() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .fetchCheckInInfo(),
  );
}

Future<Result<CheckInSuccessResult>> checkInSuccess({
  String signAt = "",
}) {
  final params = {
    "sign_at": signAt,
  };
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .checkInSuccess(params),
  );
}

///密钥登录
Future<Result<ViewPkResult>> viewPwdPKeys({
  int sortId = 1,
  String pwd = "",
}) {
  final params = {
    "sortid": sortId,
    "pay_passworld": pwd,
  };

  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .viewPwdPKeys(params),
  );
}

Future<Result<RecipientsRecordsResult>> getRecipientsRecords() {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getRecipientsRecords(),
  );
}

Future<Result<ContentDetailResult>> getContentDetail(
    {int id = 0, String version = "2"}) {
  return Result.guardFuture(
    () async => RestClient(AppInstanceRestClient.instance!.getInstance())
        .getContentDetail(id, version),
  );
}
