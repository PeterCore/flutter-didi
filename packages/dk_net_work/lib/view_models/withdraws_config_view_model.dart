import 'dart:async';

import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:flutter/cupertino.dart';

import '../models/withdraws_config_model.dart';

class WithdrawsConfigViewModel extends ChangeNotifier {
  WithdrawsConfigViewModel();
  WithdrawsConfigModel? config;

  Future<(bool, String)> getWithdrawsConfigInfo() async {
    Completer<(bool, String)> completer = Completer();
    getWithdrawsConfig().then((value) {
      value.ifSuccess((data) {
        if (!completer.isCompleted) {
          config = data;
          completer.complete((true, ""));
          notifyListeners();
        }
      });
      value.ifFailure((e) {
        completer.complete((false, e.message));
        notifyListeners();
      });
    });

    return completer.future;
  }
}
