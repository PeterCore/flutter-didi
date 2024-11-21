/// FileName api_url_path
///
/// @Author zhangchun
/// @Date 2024/9/7 21:16
///
/// @Description TODO
///
///
///

class ApiParam {
  static const int abroadFields = 122908;
  static const int domesticOid = 83479;
  static const int domesticMid = 138897;
}

class ApiUrlPath {
  ///获取滑块属性
  static const String captchaPath = "/api/v2/login/getCaptchaConfig";
  static const String verifyCaptchaPath = "/api/v2/login/checkCaptcha";

  ///公共
  //app信息
  static const String indexPath = "/api/index";
  //短信开启
  static const String isSmsPath = "/api/issms";
  //获取ip
  static const String ipPath = "/api/ipconfig";
  static const String domesticUrl = "https://api.ip138.com/ip/";
  static const String abroadUrl = "https://pro.ip-api.com/json/";
  //密钥
  static const String miYaoPath = "/api/getmiyao";
  static const String setMiYaoPath = "/api/setmiyao";
  //公共配置
  static const String commonConfigPath = "/api/v2/common/getConfig";
  //上传图片
  static const String uploadImgPath = "/api/user/uplodeimg";

  ///登录相关
  //获取验证
  static const String isLogoPath = "/api/islogo";
  static const String loginPath = "/api/login";
  static const String danYePath = "/api/danye";
  static const String registerPath = "/api/register";
  static const String forgetPath = "/api/forgot";

  static const String homePath = "/api/index";

  ///用户相关
  static const String userIndexPath = "/api/user/index";
  static const String userInfoPath = "/api/user/info";
  static const String userGetusdtinfoPath = "/api/user/getusdtinfo";
  static const String commitIdCard = "/api/user/edit";
  static const String memberShipLevel = "/api/memberlevel";
  static const String category = "/api/category";
  static const String exchangeLog = "/api/exchangelog";
  static const String jiFenPath = "/api/Jifen";
  static const String pointProductDetailPath = "/api/jfproduct";
  static const String couponLogsPath = "/api/user/couponlogs";
  static const String transferConfigPath = "/api/v2/transfer/getInfo";
  static const String commitTransferPath = "/api/user/zhuan";
  static const String transferWithdrawsRecordPath = "/api/user/withdraws";
  static const String yueBaoConfigPath = "/api/user/duodeli";
  static const String yueBaoTranscationsPath = "/api/user/shouyi";
  static const String yueBaoTxInPath = "/api/user/duodeli_ri";
  static const String yueBaoTxOutPath = "/api/user/duodeli_chu";
  static const String withdrawsConfigPath = "/api/user/withdrawshow";
  static const String commitWithdrawsPath = "/api/user/withdraw";
  static const String modifySignInPwdPath = "/api/user/password";
  static const String lotteryWinHistory = "/api/wheel/winlist";
  static const String lotteryRecordPath = "/api/wheel/cjwinlist";
  static const String accountDetailPath = "/api/user/my";
  static const String inviteFriendPath = "/api/user/mylink";
  static const String transactionDetailPath = "/api/user/shouyi";
  static const String promotionRecordPath = "/api/user/tuijian";
  static const String promotionMemberPath = "/api/user/nextshow";
  static const String loanStatusPath = "/api/user/getdaikuan";
  static const String applyLoan = "/api/user/daikuan";
  static const String checkLoanContract = "/api/v2/daikuan/previewContract";
  static const String loanContractRecordPath = "/api/user/daikuanlogs";
  static const String downLoadLoanContractPath =
      "/api/v2/daikuan/downloadContract";
  static const String loanContractInfo = "/api/v2/daikuan/getContractInfo";
  static const String earlyRepayLoanPath = "/api/user/forwarhuankuan";
  static const String repayLoanPath = "/api/user/huankuan";
  static const String userGuidePath = "/api/adlist";
  static const String singlePagePath = "/api/singlepage";
  static const String teamsPath = "/api/memberteams";
  static const String checkInPath = "/api/user/qiandaolist";
  static const String checkInSignPath = "/api/user/qiandao";
  static const String recipientsRecord = "/api/contact/getList";
  static const String contentDetailPath = "/api/newdetails";

  ///绑定
  static const String bindBankCardPath = "/api/user/bank";
  static const String bindZhiFuBaoPath = "/api/user/alipay";
  static const String bindDexWalletPath = "/api/user/usdtsave";

  ///充值
  static const String userRechargePath = "/api/user/recharge";
  static const String rechargeSavePath = "/api/user/rechargesave";
  static const String usdtInfo = "/api/user/getusdtinfo";
  static const String rechargeLogPath = "/api/user/recharges";

  static const String settingPayPswPath = "/api/user/paypwd";
  static const String lotteryConfigPath = "/api/wheel/LotteryPeizhi";
  static const String clickLotteryPath = "/api/wheel/click";
  static const String kycCert = "/api/user/certification";

  static const String userDefaultAddressPath = "/api/address/getInfo";
  static const String createNewAddressPath = "/api/address/create";
  static const String getAddressListPath = "/api/address/getList";
  static const String setDefaultAddressPath = "/api/address/setDefault";
  static const String deleteAddressPath = "/api/address/delete";
  static const String defaultAddressPath = "/api/address/getDefault";
  static const String updateAddressPath = "/api/address/update";
  static const String exchangePointPath = "/api/exchange";
  static const String exchangeRecodePath = "/api/exchangelog";
  static const String myPointPath = "/api/myjifen";
  static const String pointExchangeCash = "/api/jifenexchange";

  ///首页相关
  //新闻
  static const String newListPath = "/api/newlist";

  ///产品相关
  static const String productsPath = "/api/products";
  static const String productGetList = "/api/v2/product/getList";
  static const String productGetInfo = "/api/v2/product/getInfo";
  static const String productCheckCanBuy = "/api/v2/product/checkCanBuy";
  static const String productPreviewContract =
      "/api/v2/product/previewContract";
  static const String productNowToMoney = "/api/user/nowToMoney";
  static const String productJoinGroup = "/api/user/joingroup";
  static const String productGroupBuy = "/api/user/groupbuy";
  static const String productGroupList = "/api/user/grouplist";
  static const String productJoinGroupList = "/api/user/joingrouplist";
  static const String productTender = "/api/user/tender";
  static const String productGetContractInfo =
      "/api/v2/product/getContractInfo";
  static const String productDownloadContract =
      "/api/v2/product/downloadContract";
  static const String productSignContract = "/api/v2/product/signContract";
  static const String productJieChuInvest = "/api/user/jiechuinvest";
  static const String productGetAppDownloadList =
      "/api/user/getAppDownloadList";
  static const String productUpApp = "/api/upapp";
}
