import 'dart:async';

import 'package:dk_net_work/view_models/kyc_info_view_model.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_utils/utils/sp_utils.dart';

import '../view_models/user_info_view_model.dart';

class LoginInfo {
  factory LoginInfo() => _getInstance()!;

  static LoginInfo? get instance => _getInstance();
  static LoginInfo? _instance;

  LoginInfo._internal();

  String _appToken = "";

  String get appToken => _appToken;

  String _tempToken = "";

  String get tempToken => _tempToken;

  bool _isForceLoginOut = false;
  bool get isForceLoginOut => _isForceLoginOut;

  Function()? onListenLogOut;
  static LoginInfo? _getInstance() {
    _instance ??= LoginInfo._internal();
    return _instance;
  }

  void forceLogout() {
    if (isForceLoginOut == false) {
      _isForceLoginOut = true;
      onListenLogOut?.call();
    }
  }

  Future saveAppToken(String token) async {
    _isForceLoginOut = false;
    _appToken = token;
    await StorageUtils.setValue("app_token", token);
  }

  Future saveTempAppToken(String token) async {
    _tempToken = token;
    // LoginInfo.instance!.onListenLoginInfo!();
  }

  Future initAppToken() async {
    _appToken = await StorageUtils.getValue("app_token");
  }

  Future clearToken() async {
    final UserInfoViewModel userInfoViewModel =
        serviceLocator<UserInfoViewModel>();
    userInfoViewModel.clear();
    final KycInfoViewModel kycInfoViewModel =
        serviceLocator<KycInfoViewModel>();
    kycInfoViewModel.clear();
    _appToken = "";
    _tempToken = "";
    await StorageUtils.setValue("app_token", "");
  }
}
