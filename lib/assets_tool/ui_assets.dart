class UIAssets {
  factory UIAssets() => _getInstance()!;

  static UIAssets? get source => _getInstance();
  static UIAssets? _source;

  UIAssets._internal();

  static UIAssets? _getInstance() {
    _source ??= UIAssets._internal();
    return _source;
  }

  // String _path = "assets/v1";
  String _path = "assets/v2";

  void configPath({String path = "assets/v2"}) {
    _path = path;
  }

  String get icivft => "$_path/ic_invite_f_title.png";
  String get icivfl => "$_path/ic_invite_f_logo.png";
  String get icIm => "$_path/ic_input_mobile.png";
  String get icIp => "$_path/ic_input_pwd.png";
  String get icIv => "$_path/ic_input_invest.png";
  String get icPk => "$_path/ic_input_pk.png";
  String get iccp => "$_path/ic_company_profile.png";
  String get icmpb => "$_path/ic_megaphone_b.png";
  String get icalg => "$_path/ic_android_logo.png";
  String get icilg => "$_path/ic_ios_logo.png";
  String get ichwlg => "$_path/ic_huawei_logo.png";
  String get icqrd => "$_path/ic_qr_d.png";
  String get icicc => "$_path/ic_invite_code_copy.png";

  String get navBackB => "$_path/ic_nav_back_b.png";
  String get icIf => "$_path/ic_invite_f.png";
  String get icuex => "$_path/ic_usdt_ex.png";
  String get icts => "$_path/ic_teams.png";
  String get icky => "$_path/ic_luky.png";

  ///tabBar
  String get ictbhs => "$_path/tabBar/ic_tab_home_s.png";
  String get ictbhu => "$_path/tabBar/ic_tab_home_u.png";
  String get ictbls => "$_path/tabBar/ic_tab_lottery_s.png";
  String get ictblu => "$_path/tabBar/ic_tab_lottery_u.png";
  String get ictbps => "$_path/tabBar/ic_tab_product_s.png";
  String get ictbpu => "$_path/tabBar/ic_tab_product_u.png";
  String get ictbfs => "$_path/tabBar/ic_tab_profile_s.png";
  String get ictbfu => "$_path/tabBar/ic_tab_profile_u.png";
  String get ictbss => "$_path/tabBar/ic_tab_service_s.png";
  String get ictbsu => "$_path/tabBar/ic_tab_service_u.png";
  String get icEmpty => "$_path/ic_empty.png";
  String get icCardBg => "$_path/ic_bg_card.png";

  ///
  String get icandroidTop =>
      "$_path/android_downloader_top.png"; // android download

  ///启动图
  String get imgSplash => "$_path/ic_splash.png";

  ///背景
  ///

  String get iclm => "$_path/ic_lottery_m.png";
  String get iclt => "$_path/ic_lottery_t.png";
  String get iclr => "$_path/ic_lottery_r.png";

  String get bg1 => "$_path/bg-1.png";
  String get bg2 => "$_path/bg-2.png";
  String get bg3 => "$_path/bg-3.png";
  String get bg4 => "$_path/bg-4.png";
  String get whiteLoading => "$_path/ic_loading.png";
  String get waterBg => "$_path/ic_water_bg.png";
  String get logoW => "$_path/ic_logo_w.png";
  String get chNo => "$_path/ic_check_box_no.png";
  String get chYes => "$_path/ic_check_box_yes.png";
  String get navBack => "$_path/ic_nav_back.png";
  String get pkKeys => "$_path/ic_pk.png";
  String get verifyPk => "$_path/ic_verify_pk_s.png";
  String get copy => "$_path/ic_copy.png";
  String get hs => "$_path/home_selected.png";
  String get hu => "$_path/home_un_selected.png";
  String get ps => "$_path/product_selected.png";
  String get pu => "$_path/product_un_selected.png";
  String get prs => "$_path/profile_selected.png";
  String get pru => "$_path/profile_un_selected.png";
  String get ms => "$_path/shop_selected.png";
  String get mu => "$_path/shop_un_selected.png";
  String get homeT => "$_path/ic_home_title.png";
  String get logo2 => "$_path/logo_2.png";
  String get logo1 => "$_path/ic_logo1.png";
  String get mph => "$_path/ic_megaphone.png";
  String get banner => "$_path/banner.png";
  String get banner_1 => "$_path/banner_1.png";
  String get qda => "$_path/ic_qiandao.png";
  String get tvip => "$_path/ic_m_crown.png";
  String get vip => "$_path/ic_vip.png";
  String get logo3 => "$_path/ic_logo3.png";
  String get userBg => "$_path/ic_use_ec.png";
  String get tmember => "$_path/ic_t_crown.png";
  String get gq => "$_path/ic_gq.png";
  String get cz => "$_path/ic_cz.png";
  String get tx => "$_path/ic_tx.png";
  String get ye => "$_path/ic_ye.png";
  String get zz => "$_path/ic_zz.png";
  String get tz => "$_path/ic_tz.png";
  String get cj => "$_path/ic_cj.png";
  String get usdt => "$_path/ic_usdt.png"; // tron
  String get cny => "$_path/ic_cny.png";
  String get msbg => "$_path/ic_m_s_bg.png";
  String get mcbg => "$_path/ic_m_c_bg.png";
  String get tmsl => "$_path/ic_teams_level_logo.png";
  String get tsbg => "$_path/ic_t_s_bg.png";
  String get mgbg => "$_path/ic_m_g_bg.png";
  String get mhg => "$_path/ic_h_g.png";
  String get thg => "$_path/ic_t_h_g.png";
  String get usdtbg => "$_path/ic_usdt_bg.png";
  String get jfi => "$_path/ic_jf_image.png";
  String get cjf => "$_path/ic_c_jf.png";
  String get cjflogo => "$_path/ic_c_jf_logo.png";
  String get icmrt => "$_path/ic_member_reward.png";
  String get icjjj => "$_path/ic_level_update.png";
  String get icupbg => "$_path/ic_upload_bg.png";
  String get icBank => "$_path/ic_bank.png";
  String get icyeb => "$_path/ic_yeb.png";
  String get iczfb => "$_path/ic_zfb.png";
  String get icrdl => "$_path/ic_reward_l.png";
  String get icBankO => "$_path/ic_bank_outline.png";
  String get icchtop => "$_path/ic_checkIn_top_b.png";
  String get iccitop => "$_path/ic_coins_top.png";
  String get icckbg => "$_path/ic_ck_b.png";

  String get cy => "$_path/profile/ic_cy.png"; // 查看密钥
  String get dm => "$_path/profile/ic_dm.png"; // 登录密码
  String get jm => "$_path/profile/ic_jm.png"; // 交易明细
  String get js => "$_path/profile/ic_js.png"; // 计算器
  String get pj => "$_path/profile/ic_pj.png"; //拼团记录
  String get sh => "$_path/profile/ic_sh.png"; // 收货地址
  String get sm => "$_path/profile/ic_sm.png"; // 实名认证

  String get tcdl => "$_path/profile/ic_tcdl.png"; //退出登录
  String get tgjl => "$_path/profile/ic_tgjl.png";
  String get txj => "$_path/profile/ic_tx.png"; //提现管理
  String get tzl => "$_path/profile/ic_tz.png"; //投资制度
  String get vu => "$_path/profile/ic_vu.png"; // 版本更新
  String get wyyd => "$_path/profile/ic_wyyd.png"; //无忧易贷
  String get yqhy => "$_path/profile/ic_yqhy.png"; //邀请好友
  String get zhma => "$_path/profile/ic_zhma.png"; //支付密码
  String get zhxq => "$_path/profile/ic_zhxq.png"; //账号详情

  String get idcardB => "$_path/idcard/ic_head_body.png"; //邀请好友
  String get idcardH => "$_path/idcard/ic_ihead.png"; //支付密码
  String get idcardT => "$_path/idcard/ic_tails.png"; //账号详情
  String get idauditing => "$_path/idcard/ic_auditting.png"; //支付密码
  String get idaudited => "$_path/idcard/ic_audited.png"; //账号详情

  String get pdGroupPeople => "$_path/product/group_people.png"; // 拼团人数
  String get security => "$_path/product/security.png"; // 保险
  String get coupon => "$_path/product/coupon.png"; // 代金券
  String get localOffer => "$_path/product/local_offer.png"; // 加息券
  String get giftBg => "$_path/product/gift_bg.png"; // 礼包背景

  String get versionLogo => "$_path/version_logo.png"; // 版本logo
  String get versionName => "$_path/version_name.png"; // 公司名称
}
