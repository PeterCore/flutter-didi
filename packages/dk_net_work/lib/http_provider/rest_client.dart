import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dk_net_work/constants/api_url_path.dart';
import 'package:dk_net_work/models/check_in_result.dart';
import 'package:dk_net_work/models/kyc_certification.dart';
import 'package:dk_net_work/models/new_user_info.dart';
import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_net_work/models/promotion_records_model.dart';
import 'package:dk_net_work/models/sign_in_result_model.dart';
import 'package:dk_net_work/models/transfer_config_model.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_net_work/models/win_list_model.dart';
import 'package:dk_net_work/models/withdraws_config_model.dart';
import 'package:retrofit/retrofit.dart';

import '../models/account_detail_model.dart';
import '../models/address_info_list_model.dart';
import '../models/base_result_model.dart';
import '../models/captcha_config_model.dart';
import '../models/category_product_result_model.dart';
import '../models/check_in_success_result.dart';
import '../models/common_config.dart';
import '../models/content_detail_result.dart';
import '../models/create_address_result_model.dart';
import '../models/default_address_model.dart';
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
import '../models/mine_point_result_model.dart';
import '../models/new_list_result_model.dart';
import '../models/point_product_detail_model.dart';
import '../models/point_product_model.dart';
import '../models/product_category_result_model.dart';
import '../models/product_contract_info_model.dart';
import '../models/product_info_model.dart';
import '../models/product_list_model.dart';
import '../models/product_proview_contract_model.dart';
import '../models/promotion_member_list.dart';
import '../models/recharge_recode_model.dart';
import '../models/recipients_records_result.dart';
import '../models/redemption_record_result.dart';
import '../models/resigster_result_model.dart';
import '../models/setting_pay_psw_result.dart';
import '../models/setting_psw_result_model.dart';
import '../models/team_level_result.dart';
import '../models/transaction_detail_model.dart';
import '../models/transfer_withdraws_record_list.dart';
import '../models/upload_image_result_model.dart';
import '../models/user_info_data.dart';
import '../models/user_tender_model.dart';
import '../models/verify_captcha_result.dart';
import '../models/verify_p_keys_result_model.dart';
import '../models/view_pk_result.dart';
import '../models/welfare_coupon_result_model.dart';
import '../models/yu_e_bao_config_model.dart';
import '../models/yu_e_bao_transactions_model.dart';
import '../models/app_download_info_model.dart';
import '../models/app_update_info_model.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST(ApiUrlPath.productUpApp)
  Future<AppUpdateInfoModel> getAppUpdateInfo();

  @POST(ApiUrlPath.productGetAppDownloadList)
  Future<AppDownloadInfoModel> getAppDownloadList();

  @GET(ApiUrlPath.ipPath)
  Future<IpConfigModel> fetchIpConfig();

  @POST(ApiUrlPath.registerPath)
  Future<ResigsterResultModel> register(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.setMiYaoPath)
  Future<VerifyPKeysResultModel> verifyPKeys(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.miYaoPath)
  Future<BaseResultModel> verifyPwdPKeys(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.miYaoPath)
  Future<ViewPkResult> viewPwdPKeys(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.loginPath)
  Future<SignInResultModel> signIn(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.forgetPath)
  Future<SettingPswResultModel> forgetPsw(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.homePath)
  Future<HomeResultModel> getHomeInfo();

  @GET(ApiUrlPath.newListPath)
  Future<NewListResultModel> getNewsList(
      @Query("id") int id, @Query("version") String version);

  ///获取滑块属性
  @GET(ApiUrlPath.captchaPath)
  Future<CaptchaConfigModel> getCaptchaConfig();

  ///验证滑块
  @POST(ApiUrlPath.verifyCaptchaPath)
  Future<VerifyCaptchaResult> verifyCaptchaPath(
      @Body() Map<String, dynamic> params);

  ///获取公共配置属性
  @GET(ApiUrlPath.commonConfigPath)
  Future<CommonConfig> getCommonConfig();

  ///获取用户个人数据
  @POST(ApiUrlPath.userInfoPath)
  Future<UserInfoData> getUserInfo();

  ///获取个人中心数据
  @GET(ApiUrlPath.userIndexPath)
  Future<NewUserInfoData> getNewUserInfo();

  ///设置支付密码
  @POST(ApiUrlPath.settingPayPswPath)
  Future<SettingPayPswResult> settingPayPsw(
      @Body() Map<String, dynamic> params);

  ///获取实名认证当前资料
  @POST(ApiUrlPath.kycCert)
  Future<KycCertification> getKyc();

  ///上传图片
  @POST(ApiUrlPath.uploadImgPath)
  @MultiPart()
  Future<UploadImageResultModel> uploadMultipleFiles(
    @Part(name: "files") List<File> files, // 多文件上传
  );

  ///上传Web图片
  @POST(ApiUrlPath.uploadImgPath)
  @MultiPart()
  Future<UploadImageResultModel> uploadUint8ListMultipleFiles(
    @Part(name: "files") List<MultipartFile> files, // 多文件上传
  );

  ///设置支付密码
  @POST(ApiUrlPath.commitIdCard)
  Future<SettingPayPswResult> commitIdCard(@Body() Map<String, dynamic> params);

  ///获取会员等级
  @POST(ApiUrlPath.memberShipLevel)
  Future<MemberShipLevel> getMemberLevel();

  ///获取会员等级
  @POST(ApiUrlPath.category)
  Future<CategoryProductResultModel> getCategory(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.exchangeLog)
  Future<RedemptionRecordResult> getRedemptionRecord(
      @Body() Map<String, dynamic> params);

  // 产品
  @POST(ApiUrlPath.jiFenPath)
  Future<PointProductModel> getPointProduct(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.pointProductDetailPath)
  Future<PointProductDetailModel> getPointProductDetail(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productPreviewContract)
  Future<ProductProviewContractModel> getProductPreviewContract(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productNowToMoney)
  Future<BaseResultModel> productNowToMoney(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productJoinGroup)
  Future<BaseResultModel> productJoinGroup(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productGroupBuy)
  Future<BaseResultModel> productGroupBuy(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productGroupList)
  Future<GrouplistModel> getProductGroupList(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productJoinGroupList)
  Future<GrouplistModel> getProductJoinGroupList(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productTender)
  Future<UserTenderModel> getProductTender(@Body() Map<String, dynamic> params);

  @GET(ApiUrlPath.productGetContractInfo)
  Future<ProductContractInfoModel> getProductContractInfo(
      @Queries() Map<String, dynamic> params);

  @GET(ApiUrlPath.productDownloadContract)
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> downLoadProductContract(
      @Query("contract_no") String contractNo);

  @POST(ApiUrlPath.productSignContract)
  Future<BaseResultModel> productSignContract(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productJieChuInvest)
  Future<BaseResultModel> productJieChuInvest(
      @Body() Map<String, dynamic> params);

  ///地址
  @POST(ApiUrlPath.userDefaultAddressPath)
  Future<UserDefaultAddressInfo> getUserDefaultAddressInfo(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.createNewAddressPath)
  Future<CreateAddressResultModel> createAddressInfo(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.updateAddressPath)
  Future<CreateAddressResultModel> updateAddressInfo(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.getAddressListPath)
  Future<AddressInfoListModel> getAddressList(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.setDefaultAddressPath)
  Future<CreateAddressResultModel> setDefaultAddress(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.deleteAddressPath)
  Future<CreateAddressResultModel> deleteAddress(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.defaultAddressPath)
  Future<DefaultAddressModel> getDefaultAddress();

  @POST(ApiUrlPath.exchangePointPath)
  Future<CreateAddressResultModel> exchangePoint(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.exchangeRecodePath)
  Future<ExchangeRecodeResult> exchangeRecode(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.myPointPath)
  Future<MinePointResultModel> getMyPoint();

  @POST(ApiUrlPath.pointExchangeCash)
  Future<BaseResultModel> pointExchangeCash(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.couponLogsPath)
  Future<WelfareCouponResultModel> getCouponLogs(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.userRechargePath)
  Future<OnlineRechargeTypeModel> getOnlineRechargeTypeList();

  @POST(ApiUrlPath.usdtInfo)
  Future<BaseResultModel> getUSDTInfo();

  @POST(ApiUrlPath.rechargeSavePath)
  Future<BaseResultModel> commitUSDT(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.rechargeSavePath)
  Future<BaseResultModel> commitCNY(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.rechargeLogPath)
  Future<RechargeRecodeModel> getRechargeRecode(
      @Body() Map<String, dynamic> params);

  @GET(ApiUrlPath.transferConfigPath)
  Future<TransferConfigModel> getTransferConfig();

  @POST(ApiUrlPath.commitTransferPath)
  Future<BaseResultModel> commitTransfer(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.transferWithdrawsRecordPath)
  Future<TransferWithdrawsRecordList> getTransferWithdrawsRecord(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.yueBaoConfigPath)
  Future<YueBaoConfigModel> getYueBaoConfig();

  @POST(ApiUrlPath.yueBaoTranscationsPath)
  Future<YueBaoTransactionsModel> getYueBaoTranscations(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.yueBaoTxInPath)
  Future<BaseResultModel> yueBaoTxIn(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.yueBaoTxOutPath)
  Future<BaseResultModel> yueBaoTxOut(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.withdrawsConfigPath)
  Future<WithdrawsConfigModel> getWithdrawsConfig();

  @POST(ApiUrlPath.bindBankCardPath)
  Future<BaseResultModel> bindBankCard(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.bindZhiFuBaoPath)
  Future<BaseResultModel> bindZhiFuBaoAccount(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.bindDexWalletPath)
  Future<BaseResultModel> bindDexWallet(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.commitWithdrawsPath)
  Future<BaseResultModel> commitWithdraws(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.productsPath)
  Future<ProductCategoryResultModel> getProducts();

  @GET(ApiUrlPath.productGetList)
  Future<ProductListModel> getProductList(
      @Queries() Map<String, dynamic> params);

  @GET(ApiUrlPath.productGetInfo)
  Future<ProductInfoModel> getProductInfo(
      @Queries() Map<String, dynamic> params);

  @POST(ApiUrlPath.productCheckCanBuy)
  Future<BaseResultModel> productCheckCanBuy(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.modifySignInPwdPath)
  Future<BaseResultModel> modifySignInPwd(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.lotteryConfigPath)
  Future<LotteryConfigModel> getLotteryConfig();

  @POST(ApiUrlPath.clickLotteryPath)
  Future<LotteryResultModel> getLotteryResult();

  @POST(ApiUrlPath.lotteryWinHistory)
  Future<WinListModel> getWinList();

  @POST(ApiUrlPath.lotteryRecordPath)
  Future<LotteryRecordList> getLotteryRecord(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.accountDetailPath)
  Future<AccountDetailModel> getAccountDetail();

  @GET(ApiUrlPath.inviteFriendPath)
  Future<InviteFriendConfigModel> getInviteFriendConfig();

  @POST(ApiUrlPath.transactionDetailPath)
  Future<TransactionDetailModel> getTransactionDetail(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.promotionRecordPath)
  Future<PromotionRecordsModel> getPromotionRecords();

  @POST(ApiUrlPath.promotionMemberPath)
  Future<PromotionMemberList> getPromotionMembers(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.loanStatusPath)
  Future<LoanStatusModel> getLoanStatus();

  @POST(ApiUrlPath.applyLoan)
  Future<BaseResultModel> applyLoan(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.checkLoanContract)
  Future<LoanContractContentModel> checkLoanContract(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.loanContractRecordPath)
  Future<LoanContractRecordResult> getLoanContractRecords(
      @Body() Map<String, dynamic> params);

  @GET(ApiUrlPath.downLoadLoanContractPath)
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> downLoadLoanContract(
      @Query("contract_no") String contractNo);

  @GET(ApiUrlPath.loanContractInfo)
  Future<LoanContractDetailInfoModel> getLoanContractDetail(
      @Queries() Map<String, dynamic> params);

  @POST(ApiUrlPath.earlyRepayLoanPath)
  Future<BaseResultModel> earlyRepayLoan(@Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.repayLoanPath)
  Future<BaseResultModel> repayLoan(@Body() Map<String, dynamic> params);

  @GET(ApiUrlPath.userGuidePath)
  Future<GuidesUserResultModel> useGuidePath(@Query("version") String version);

  @GET(ApiUrlPath.singlePagePath)
  Future<LinkPageResult> singlePage(
      @Query("links") String links, @Query("version") String version);

  @POST(ApiUrlPath.teamsPath)
  Future<TeamLevelResult> getMemberLevels();

  @POST(ApiUrlPath.checkInPath)
  Future<CheckInResult> fetchCheckInInfo();

  @POST(ApiUrlPath.checkInSignPath)
  Future<CheckInSuccessResult> checkInSuccess(
      @Body() Map<String, dynamic> params);

  @POST(ApiUrlPath.recipientsRecord)
  Future<RecipientsRecordsResult> getRecipientsRecords();

  @GET(ApiUrlPath.contentDetailPath)
  Future<ContentDetailResult> getContentDetail(
      @Query("id") int id, @Query("version") String version);
}
