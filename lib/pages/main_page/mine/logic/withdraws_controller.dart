import 'dart:ui';

import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/withdraws_config_view_model.dart';
import 'package:dk_utils/dk_lib.dart';

class WithdrawsController {
  WithdrawsController();
  final WithdrawsConfigViewModel withdrawsModel =
      serviceLocator<WithdrawsConfigViewModel>();

  void getWithdrawsConfig() {
    withdrawsModel.getWithdrawsConfigInfo().then((p) {
      EasyLoading.dismiss();
      if (p.$1 == false) {
        EasyLoading.showError(p.$2);
      }
    });
  }

  void addListener(VoidCallback listener) {
    withdrawsModel.addListener(listener);
  }

  void removeListener(VoidCallback listener) {
    withdrawsModel.removeListener(listener);
  }
}
