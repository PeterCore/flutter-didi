import 'dart:ui';

import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';

class UserInfoController {
  UserInfoController();
  final UserInfoViewModel userInfoModel = serviceLocator<UserInfoViewModel>();

  void getUserInfo() {
    EasyLoading.show();
    userInfoModel.fetchUserInfo(onComplete: () {
      EasyLoading.dismiss();
    });
  }

  void addListener(VoidCallback listener) {
    userInfoModel.addListener(listener);
  }

  void removeListener(VoidCallback listener) {
    userInfoModel.removeListener(listener);
  }
}
