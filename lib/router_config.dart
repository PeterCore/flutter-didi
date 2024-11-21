import 'dart:convert';

import 'package:churn/launch/launch_page.dart';
import 'package:churn/pages/login/pages/sign_in_page.dart';
import 'package:churn/pages/main_page/check_in/check_in_page.dart';
import 'package:churn/pages/main_page/check_in/check_in_record_page.dart';
import 'package:churn/pages/main_page/home/pages/company_profile_page.dart';
import 'package:churn/pages/main_page/home/pages/new_detail_page.dart';
import 'package:churn/pages/main_page/home/pages/new_list_page.dart';
import 'package:churn/pages/main_page/main_page.dart';
import 'package:churn/pages/main_page/market/pages/exchange_cash_page.dart';
import 'package:churn/pages/main_page/market/pages/exchange_point_product_page.dart';
import 'package:churn/pages/main_page/market/pages/exchange_record_page.dart';
import 'package:churn/pages/main_page/market/pages/point_product_detail_page.dart';
import 'package:churn/pages/main_page/mine/pages/account_detail_page.dart';
import 'package:churn/pages/main_page/mine/pages/address_manager_page.dart';
import 'package:churn/pages/main_page/mine/pages/android_down_loader_page.dart';
import 'package:churn/pages/main_page/mine/pages/app_download.dart';
import 'package:churn/pages/main_page/mine/pages/calculator_page.dart';
import 'package:churn/pages/main_page/mine/pages/coupon_page.dart';
import 'package:churn/pages/main_page/mine/pages/edit_address_page.dart';
import 'package:churn/pages/main_page/mine/pages/edit_bank_page.dart';
import 'package:churn/pages/main_page/mine/pages/edit_wallet_page.dart';
import 'package:churn/pages/main_page/mine/pages/edit_zhi_fu_bao_page.dart';
import 'package:churn/pages/main_page/mine/pages/invest_regime_page.dart';
import 'package:churn/pages/main_page/mine/pages/invite_friend_page.dart';
import 'package:churn/pages/main_page/mine/pages/kyc_user_page.dart';
import 'package:churn/pages/main_page/mine/pages/loan_contract_detail_page.dart';
import 'package:churn/pages/main_page/mine/pages/loan_contract_preview_page.dart';
import 'package:churn/pages/main_page/mine/pages/loan_contract_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/loan_page.dart';
import 'package:churn/pages/main_page/mine/pages/loan_repay_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/loan_repayment_page.dart';
import 'package:churn/pages/main_page/mine/pages/lottery_page.dart';
import 'package:churn/pages/main_page/mine/pages/lottery_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/member_ship_level_page.dart';
import 'package:churn/pages/main_page/mine/pages/online_recharge_page.dart';
import 'package:churn/pages/main_page/mine/pages/promotion_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/recharge_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/signaturePad_page.dart';
import 'package:churn/pages/main_page/mine/pages/teams_level_page.dart';
import 'package:churn/pages/main_page/mine/pages/teams_level_reward_page.dart';
import 'package:churn/pages/main_page/mine/pages/transaction_detail_page.dart';
import 'package:churn/pages/main_page/mine/pages/transfer_page.dart';
import 'package:churn/pages/main_page/mine/pages/transfer_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/version_update.dart';
import 'package:churn/pages/main_page/mine/pages/view_pk_page.dart';
import 'package:churn/pages/main_page/mine/pages/withdraws_manager_page.dart';
import 'package:churn/pages/main_page/mine/pages/withdraws_page.dart';
import 'package:churn/pages/main_page/mine/pages/withdraws_record_page.dart';
import 'package:churn/pages/main_page/mine/pages/yu_e_bao_page.dart';
import 'package:churn/pages/main_page/mine/pages/yu_e_bao_tx_in_page.dart';
import 'package:churn/pages/main_page/mine/pages/yu_e_bao_tx_out_page.dart';
import 'package:churn/pages/main_page/mine/widgets/use_guide/content_detail_page.dart';
import 'package:churn/pages/main_page/mine/widgets/use_guide/user_guide_page.dart';
import 'package:churn/pages/main_page/product/pages/product_buy_page.dart';
import 'package:churn/pages/main_page/product/pages/product_contract_page.dart';
import 'package:churn/pages/main_page/product/pages/product_detail_page.dart';
import 'package:churn/pages/main_page/product/pages/product_group_records_page.dart';
import 'package:churn/pages/main_page/product/pages/product_normal_records_page.dart';
import 'package:churn/pages/password/pages/copy_pk_info_page.dart';
import 'package:churn/pages/password/pages/get_new_password_page.dart';
import 'package:churn/pages/password/pages/modify_password_with_pk_page.dart';
import 'package:churn/pages/password/pages/modify_pay_pwd_with_original_pwd_page.dart';
import 'package:churn/pages/password/pages/modify_pay_pwd_with_pk_page.dart';
import 'package:churn/pages/password/pages/modify_signIn_pwd_with_original_pwd_page.dart';
import 'package:churn/pages/password/pages/pay_password_page.dart';
import 'package:churn/pages/password/pages/pk_Info_page.dart';
import 'package:churn/pages/password/pages/reset_psw_page.dart';
import 'package:churn/pages/register/pages/sign_up_page.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_utils/dk_lib.dart';

/// FileName router_config
///
/// @Author RealOne
/// @Date 2024/9/7 15:59
///
/// @Description TODO
///
///
class PagePath {
  static String launchPage = "launchPage"; //
  static String signInPage = 'signInPage'; //登录
  static String signUpPage = 'signUpPage'; //注册
  static String resetPswPage = 'resetPswPage';
  static String pkInfoPage = "pkInfoPage";
  static String copyPkInfoPage = "copyPkInfoPage";
  static String getNewPasswordPage = "getNewPasswordPage";
  static String kycUserPage = "kycUserPage";
  static String payPassWordPage = "payPassWordPage";
  static String memberShipLevelPage = "memberShipLevelPage";
  static String exchangeCashPage = "exchangeCashPage";
  static String pointProductDetailPage = "pointProductDetailPage";
  static String exchangePointProductPage = "exchangePointProductPage";
  static String addressManagerPage = "addressManagerPage";
  static String editAddressPage = "editAddressPage";
  static String exchangeRecodePage = "exchangeRecodePage";
  static String couponPage = "couponPage";
  static String onlineRechargePage = "onlineRechargePage";
  static String rechargeRecodePage = "rechargeRecodePage";
  static String transferPage = "transferPage";
  static String transferRecordPage = "transferRecordPage";
  static String yuEBaoPage = "yuEBaoPage";
  static String yuEBaoTxInPage = "yuEBaoTxInPage";
  static String yuEBaoTxOutPage = "yuEBaoTxOutPage";
  static String withdrawsPage = "withdrawsPage";
  static String withdrawsManagerPage = "withdrawsManagerPage";
  static String editBankPage = "editBankPage";
  static String editWalletPage = "editWalletPage";
  static String editZhiFuBaoPage = "editZhiFuBaoPage";
  static String modifyPayPwdWithPkPage = "modifyPayPwdWithPkPage";
  static String withdrawsRecordPage = "withdrawsRecordPage";
  static String productDetailPage = "productDetailPage";
  static String productBuyPage = "productBuyPage";
  static String productGroupRecordsPage = "productGroupRecordsPage";
  static String productNormalRecordsPage = "productNormalRecordsPage";
  static String productContractPage = "productContractPage";
  static String modifyPayPwdPage = "modifyPayPwdPage";
  static String modifySignInPwdWithOriginalPwdPage =
      "modifySignInPwdWithOriginalPwdPage";
  static String lotteryPage = "lotteryPage";
  static String lotteryRecordPage = "lotteryRecordPage";
  static String accountDetailPage = "accountDetailPage";
  static String inviteFriendPage = "inviteFriendPage";
  static String androidDownLoaderPage = "androidDownLoaderPage";
  static String transactionDetailPage = "transactionDetailPage";
  static String promotionRecordPage = "promotionRecordPage";
  static String loanPage = "loanPage";
  static String loanContractPreViewPage = "loanContractPreViewPage";
  static String signaturePadPage = "signaturePadPage";
  static String loanContractRecordPage = "loanContractRecordPage";
  static String loanRepaymentPage = "loanRepaymentPage";
  static String loanContractDetailPage = "loanContractDetailPage";
  static String loanRepayRecordPage = "loanRepayRecordPage";
  static String companyProfilePage = "companyProfilePage";
  static String newListPage = "newListPage";
  static String newDetailPage = "newDetailPage";
  static String teamsLevelPage = "teamsLevelPage";
  static String investRegimePage = "investRegimePage";
  static String checkInPage = "checkInPage";
  static String checkInRecordPage = "checkInRecordPage";
  static String viewPkPage = "viewPkPage";
  static String teamsLevelRewardPage = "teamsLevelRewardPage";
  static String modifySignInPswPage = "modifySignInPsw";
  static String userGuidePage = "userGuidePage";
  static String calculatorPage = "calculatorPage";
  static String versionUpdatePage = "versionUpdatePage";
  static String appDownloadPage = "appDownloadPage";
  static String contentDetailPage = "contentDetailPage";
}

List<String> noLoginGoRouterPath() {
  return [
    PagePath.signInPage.routerPath(),
    PagePath.signUpPage.routerPath(),
    PagePath.resetPswPage.routerPath(),
    PagePath.pkInfoPage.routerPath(),
    PagePath.copyPkInfoPage.routerPath(ext: true),
    PagePath.getNewPasswordPage.routerPath(ext: true),
    PagePath.payPassWordPage,
    // ScreenPaths.userAgreementPage,
    // ScreenPaths.privacyPolicyPage,
    // ScreenPaths.forgetPasswordPage,
    // ScreenPaths.accountLoginPage,
    // ScreenPaths.phoneLoginPage,
    // ScreenPaths.phoneLoginWxBindPage,
  ];
}

bool resizeToAvoidBottomInset(String path) {
  bool resizeToAvoidBottomInset = true;
  final paths = ['/'];
  resizeToAvoidBottomInset = !paths.contains(path);
  return resizeToAvoidBottomInset;
}

List<RouteBase> registerRouters() {
  List<RouteBase> routes = [
    dKRouter(PagePath.launchPage, resizeToAvoidBottomInset: false, (_) {
      return const AppLaunchPage();
    }),

    dKRouter(PagePath.appDownloadPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const AppDownloadPage();
    }),
    dKRouter(PagePath.calculatorPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const CalculatorPage();
    }),
    dKRouter(PagePath.versionUpdatePage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const VersionUpdatePage();
    }),
    dKRouter(PagePath.productNormalRecordsPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const ProductNormalRecordsPage();
    }),
    dKRouter(PagePath.productDetailPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal,
        ext: true, (s) {
      return ProductDetailPage(
        id: s!["id"],
        type: s["type"],
      );
    }),
    dKRouter(PagePath.productContractPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal,
        ext: true, (s) {
      return ProductContractPage(
        data: s!,
      );
    }),
    dKRouter(PagePath.productBuyPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal,
        ext: true, (s) {
      return ProductBuyPage(
        id: s!["id"],
        type: s["type"],
      );
    }),
    dKRouter(PagePath.productGroupRecordsPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return ProductGroupRecordsPage(type: s?["type"]);
    }),
    dKRouter("/",
        resizeToAvoidBottomInset: false, transType: ScreenTransType.fade, (_) {
      return const MainPage();
    }),
    dKRouter(PagePath.signInPage,
        resizeToAvoidBottomInset: false, transType: ScreenTransType.fade, (_) {
      return const SignInPage();
    }),
    dKRouter(PagePath.signUpPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.fade, (_) {
      return const SignUpPage();
    }),
    dKRouter(PagePath.resetPswPage,
        resizeToAvoidBottomInset: false, transType: ScreenTransType.fade, (_) {
      return const ResetPswPage();
    }),
    dKRouter(PagePath.pkInfoPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return PkInfoPage(
        safeKeys: s!["safeKeys"],
      );
    }),

    dKRouter(PagePath.newDetailPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return NewDetailPage(
        content: s!["content"],
      );
    }),
    dKRouter(PagePath.copyPkInfoPage,
        resizeToAvoidBottomInset: false, transType: ScreenTransType.fade, (_) {
      return const CopyPkInfoPage();
    }),
    dKRouter(PagePath.kycUserPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const KycUserPage();
    }),
    dKRouter(PagePath.getNewPasswordPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return GetNewPasswordPage(
        tempPsw: s!["pk"],
      );
    }),

    dKRouter(PagePath.exchangeCashPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return ExchangeCashPage(
        point: s!["point"],
      );
    }),
    dKRouter(PagePath.payPassWordPage,
        resizeToAvoidBottomInset: false, transType: ScreenTransType.fade, (_) {
      return const PayPasswordPage();
    }),

    dKRouter(PagePath.memberShipLevelPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const MemberShipLevelPage();
    }),

    dKRouter(PagePath.addressManagerPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return AddressManagerPage(
        isPick: s?["isPick"],
      );
    }),

    dKRouter(PagePath.pointProductDetailPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return PointProductDetailPage(
          myPoint: s!["myPoint"], productId: s!["productId"]);
    }),

    dKRouter(PagePath.onlineRechargePage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const OnlineRechargePage();
    }),

    dKRouter(PagePath.editAddressPage,
        resizeToAvoidBottomInset: true,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      if (s == null || s.isEmpty) {
        return const EditAddressPage();
      } else {
        String jsonString = s["addressInfo"];
        AddressInfo info = AddressInfo.fromJson(json.decode(jsonString));
        return EditAddressPage(
          addressInfo: info,
        );
      }
    }),

    dKRouter(PagePath.exchangeRecodePage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const ExchangeRecordPage();
    }),

    dKRouter(PagePath.exchangePointProductPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return ExchangePointProductPage(
          imageUrl: s!["imageUrl"],
          productId: s!["productId"],
          productValue: s!["productValue"],
          desc: s!["desc"],
          title: s!["title"],
          quantity: s!["quantity"]);
    }),

    dKRouter(PagePath.couponPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return CouponPage(type: s!["type"]);
    }),

    dKRouter(PagePath.newListPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const NewListPage();
    }),

    dKRouter(PagePath.rechargeRecodePage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const RechargeRecordPage();
    }),

    dKRouter(PagePath.transferPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const TransferPage();
    }),
    dKRouter(PagePath.transferRecordPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const TransferRecordPage();
    }),

    dKRouter(PagePath.yuEBaoPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const YuEBaoPage();
    }),

    dKRouter(PagePath.yuEBaoTxInPage,
        resizeToAvoidBottomInset: true,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return YuEBaoTxInPage(
        inCash: s!["inCash"],
      );
    }),

    dKRouter(PagePath.yuEBaoTxOutPage,
        resizeToAvoidBottomInset: true,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return YuEBaoTxOutPage(
        outCash: s!["outCash"],
      );
    }),

    dKRouter(PagePath.withdrawsManagerPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const WithdrawsManagerPage();
    }),

    dKRouter(PagePath.withdrawsPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const WithdrawsPage();
    }),

    dKRouter(PagePath.editBankPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const EditBankPage();
    }),

    dKRouter(PagePath.editWalletPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const EditWalletPage();
    }),

    dKRouter(PagePath.editZhiFuBaoPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const EditZhiFuBaoPage();
    }),

    dKRouter(PagePath.modifyPayPwdWithPkPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const ModifyPayPwdWithPkPage();
    }),

    dKRouter(PagePath.withdrawsRecordPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const WithdrawsRecordPage();
    }),
    dKRouter(PagePath.modifyPayPwdPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const ModifyPayPwdWithOriginalPwdPage();
    }),

    dKRouter(PagePath.modifySignInPwdWithOriginalPwdPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const ModifySignInPwdWithOriginalPwdPage();
    }),

    dKRouter(PagePath.lotteryPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const LotteryPage();
    }),

    dKRouter(PagePath.lotteryRecordPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const LotteryRecordPage();
    }),

    dKRouter(PagePath.accountDetailPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const AccountDetailPage();
    }),
    dKRouter(PagePath.inviteFriendPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const InviteFriendPage();
    }),

    dKRouter(PagePath.transactionDetailPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const TransactionDetailPage();
    }),

    dKRouter(PagePath.androidDownLoaderPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return AndroidDownLoaderPage(
        downloadConfig: s!["config"],
      );
    }),

    dKRouter(PagePath.loanPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const LoanPage();
    }),

    dKRouter(PagePath.loanContractPreViewPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return LoanContractPreViewPage(
        money: s!["money"],
        isSignature: s!["isSignature"],
      );
    }),

    dKRouter(PagePath.promotionRecordPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const PromotionRecordPage();
    }),

    dKRouter(PagePath.signaturePadPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const SignaturePadPage();
    }),

    dKRouter(PagePath.loanContractRecordPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const LoanContractRecordPage();
    }),

    dKRouter(PagePath.loanRepaymentPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return LoanRepaymentPage(
        type: s!["type"],
        contractNo: s?["contractNo"] ?? "",
      );
    }),

    dKRouter(PagePath.loanContractDetailPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return LoanContractDetailPage(
        contractNo: s!["contractNo"],
      );
    }),

    dKRouter(PagePath.loanRepayRecordPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const LoanRepayRecordPage();
    }),

    dKRouter(PagePath.teamsLevelPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const TeamsLevelPage();
    }),

    dKRouter(PagePath.companyProfilePage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const CompanyProfilePage();
    }),

    dKRouter(PagePath.investRegimePage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const InvestRegimePage();
    }),

    dKRouter(PagePath.checkInPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const CheckInPage();
    }),
    dKRouter(PagePath.checkInRecordPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const CheckInRecordPage();
    }),

    dKRouter(PagePath.teamsLevelRewardPage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const TeamsLevelRewardPage();
    }),

    dKRouter(PagePath.modifySignInPswPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const ModifyPasswordWithPkPage();
    }),

    dKRouter(PagePath.viewPkPage,
        resizeToAvoidBottomInset: true, transType: ScreenTransType.normal, (_) {
      return const ViewPkPage();
    }),

    dKRouter(PagePath.userGuidePage,
        resizeToAvoidBottomInset: false,
        transType: ScreenTransType.normal, (_) {
      return const UserGuidePage();
    }),

    dKRouter(PagePath.contentDetailPage,
        resizeToAvoidBottomInset: false,
        ext: true,
        transType: ScreenTransType.normal, (s) {
      return ContentDetailPage(
        id: s!["id"],
        title: s!["title"],
        videoUrl: s!["videoUrl"],
      );
    }),

    // dKRouter('/', resizeToAvoidBottomInset: false, (_) {
    //   return  const MainPage();
    // }),
    // dKRouter(ScreenPaths.loginPage, (_) => const LoginV2Page(),
    //     resizeToAvoidBottomInset: false),
    // // dKRouter(ScreenPaths.wxBindPage, (_) => const WxBindPage()),
    //
    // dKRouter(
    //     ScreenPaths.editSchoolMessagePage,
    //     ext: true,
    //         (s) => EditSchoolMessagePage(
    //         id: s!['id'])),
  ];
  return routes;
}
