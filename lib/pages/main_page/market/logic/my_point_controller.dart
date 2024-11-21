import 'dart:ui';

import 'package:dk_net_work/view_models/my_point_view_model.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_utils/dk_lib.dart';

class MyPointController {
  MyPointController();
  final MyPointViewModel myPointViewModel = serviceLocator<MyPointViewModel>();

  void getCurrentPoint() {
    // EasyLoading.show();
    myPointViewModel.getMyPoint().then((value) {
      EasyLoading.dismiss();
    });
  }

  void addListener(VoidCallback listener) {
    myPointViewModel.addListener(listener);
  }

  void removeListener(VoidCallback listener) {
    myPointViewModel.removeListener(listener);
  }
}
