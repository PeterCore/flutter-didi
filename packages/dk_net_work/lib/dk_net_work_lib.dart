library dk_net_work;

import 'package:dk_net_work/logic/fetch_ip_info.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/utils/dk_utils_init.dart';

import 'logic/check_picker_net_work.dart';
import 'logic/login_info.dart';

export 'package:dio/dio.dart';
export 'package:dk_net_work/http_provider/rest_client_utils.dart';
export 'package:dk_net_work/logic/check_picker_net_work.dart';
export 'package:dk_net_work/net_work/app_dio.dart';

class DkNetWorkLib {
  static Future initConfig({String url = ""}) async {
    {
      CheckPickerNetWork.instance;
      DkUtilsInit.instance;
      IPInfo.instance;
      LoginInfo.instance;
      setupServiceLocator();
      await LoginInfo.instance!.initAppToken();
      serviceLocator<UserInfoViewModel>().initUserInfo();
      IPInfo.instance!.initConfig();
      CheckPickerNetWork.instance!.configUrl([url]);
      DkUtilsInit.instance!.initAppInfo();
    }
  }
}
