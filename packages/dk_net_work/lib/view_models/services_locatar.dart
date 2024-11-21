import 'package:dk_net_work/view_models/my_point_view_model.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_net_work/view_models/withdraws_config_view_model.dart';
import 'package:get_it/get_it.dart';

import 'kyc_info_view_model.dart';

final serviceLocator = GetIt.instance;
bool boolIsInitailized = false;

void setupServiceLocator() {
  if (!boolIsInitailized) {
    serviceLocator.registerSingleton<UserInfoViewModel>(UserInfoViewModel());
    serviceLocator.registerSingleton<KycInfoViewModel>(KycInfoViewModel());
    serviceLocator.registerSingleton<WithdrawsConfigViewModel>(
        WithdrawsConfigViewModel());
    serviceLocator.registerSingleton<MyPointViewModel>(MyPointViewModel());
    boolIsInitailized = true;
  }
}
