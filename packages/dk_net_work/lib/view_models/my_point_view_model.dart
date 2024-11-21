import 'dart:async';

import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:flutter/cupertino.dart';

import '../http_provider/rest_client_utils.dart';
import '../models/mine_point_result_model.dart';

class MyPointViewModel extends ChangeNotifier {
  MyPointViewModel();

  MinePointResultModel? _minePointResultModel;
  MinePointResultModel? get minePointResultModel => _minePointResultModel;
  final UserInfoViewModel userInfoViewModel =
      serviceLocator<UserInfoViewModel>();

  Future<bool> getMyPoint() async {
    Completer<bool> completer = Completer();
    getMyPointInfo().then((value) {
      value.ifSuccess((data) {
        if (!completer.isCompleted) {
          completer.complete(true);
        }
        _minePointResultModel = data;
        userInfoViewModel.getAllUserInfo();
        notifyListeners();
      });
      value.ifFailure((e) {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      });
    });
    return completer.future;
  }
}
