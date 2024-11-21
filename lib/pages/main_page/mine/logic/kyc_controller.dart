import 'dart:ui';

import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/view_models/kyc_info_view_model.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';

class KycController {
  KycController();
  final UserInfoViewModel userInfoModel = serviceLocator<UserInfoViewModel>();
  final KycInfoViewModel kycInfoViewModel = serviceLocator<KycInfoViewModel>();

  void getKycUserInfo() {
    if (kycInfoViewModel.certification == null) {
      EasyLoading.show();
      kycInfoViewModel.getKycCertInfo(onComplete: (a, msg) {
        EasyLoading.dismiss();
      });
    }
  }

  void commitCard(
      {String name = "",
      String idCard = '',
      String zm = "",
      String fm = "",
      String sc = ""}) {
    EasyLoading.show();
    commitIdCard(realname: name, card: idCard, zm: zm, fm: fm, sc: sc)
        .then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        EasyLoading.show();
        kycInfoViewModel.getKycCertInfo(onComplete: (a, msg) {
          userInfoModel.updateIdCard(
              status: kycInfoViewModel.certification?.stats ?? 0);
          userInfoModel.updateNewIdCard(
              status: kycInfoViewModel.certification?.stats ?? 0);
          EasyLoading.dismiss();
        });
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  void addListener(VoidCallback listener) {
    kycInfoViewModel.addListener(listener);
  }

  void removeListener(VoidCallback listener) {
    kycInfoViewModel.removeListener(listener);
  }
}
