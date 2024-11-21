import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/home_result_model.dart';
import 'package:dk_net_work/models/new_list_result_model.dart';
import 'package:dk_utils/dk_lib.dart';

class HomeManager {
  static void fetchHomeMsg(
      {Function(HomeResultModel homeInfo)? onSuccess, Function()? onFinish}) {
    fetchHomeInfo().then((value) {
      EasyLoading.dismiss();
      onFinish?.call();
      value.ifSuccess((data) {
        onSuccess?.call(data);
      });
      value.ifFailure((e) {});
    });
  }

  static void fetchNewListMsg(
      {Function(NewListResultModel newInfos)? onSuccess,
      int id = 65,
      Function()? onFinish}) {
    fetchNewList(id: 65).then((value) {
      EasyLoading.dismiss();
      onFinish?.call();
      value.ifSuccess((data) {
        onSuccess?.call(data);
      });
      value.ifFailure((e) {});
    });
  }
}
