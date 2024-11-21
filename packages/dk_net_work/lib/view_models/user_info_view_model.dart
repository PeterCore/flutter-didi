import 'package:dk_utils/utils/sp_utils.dart';
import 'package:flutter/cupertino.dart';

import '../http_provider/rest_client_utils.dart';
import '../models/new_user_info.dart';
import '../models/user_info_data.dart';

class UserInfoViewModel extends ChangeNotifier {
  UserInfoData? _data;
  UserInfoData? get data => _data;

  NewUserInfoData? _newData;
  NewUserInfoData? get newData => _newData;

  void save(UserInfoData? data) {
    if (data != null) {
      _data = data;
      String userInfo = userInfoDataToJson(data!);
      StorageUtils.setValue("userInfo", userInfo);
      notifyListeners();
    }
  }

  void saveNewData(NewUserInfoData? data) {
    if (data != null) {
      _newData = data;
      String userInfo = newUserInfoDataToJson(data!);
      StorageUtils.setValue("newUserInfo", userInfo);
      notifyListeners();
    }
  }

  void updateNewPayStatus({int status = 0}) {
    if (_data != null) {
      _newData?.ispaypwd = status;
      saveNewData(_newData);
    }
  }

  void updatePayStatus({int status = 0}) {
    if (_data != null) {
      _data?.ispay = status;
      save(_data);
    }
  }

  void updateIdCard({int status = 0}) {
    if (_data != null) {
      _data?.isreal = status;
      save(_data);
    }
  }

  void updateNewIdCard({int status = 0}) {
    if (_data != null) {
      _newData?.isreal = status;
      saveNewData(_newData);
    }
  }

  Future initUserInfo() async {
    final String userInfoString = await StorageUtils.getValue("userInfo");
    if (userInfoString.isNotEmpty) {
      _data = userInfoDataFromJson(userInfoString);
    }
    final String newUserInfoString = await StorageUtils.getValue("newUserInfo");
    if (newUserInfoString.isNotEmpty) {
      _newData = newUserInfoFromJson(newUserInfoString);
    }
  }

  void clear() {
    _data = null;
    _newData = null;
    StorageUtils.setValue("userInfo", "");
    StorageUtils.setValue("newUserInfo", "");
    notifyListeners();
  }

  void setPayPsw(
      {String newpass = "",
      String renewpass = "",
      Function(
        bool success,
        String msg,
      )? onComplete}) {
    settingPayPsw(newpass: newpass, renewpass: renewpass).then((value) {
      value.ifSuccess((data) {
        onComplete?.call(true, data.msg ?? "");
      });
      value.ifFailure((e) {
        onComplete?.call(false, e.message);
      });
    });
  }

  void getAllUserInfo() {
    fetchUserInfo();
    fetchNewUserInfo();
  }

  void fetchUserInfo({Function()? onComplete}) {
    getUserInfo().then((value) {
      value.ifSuccess((data) {
        save(data);
        onComplete?.call();
        notifyListeners();
      });
      value.ifFailure((e) {
        onComplete?.call();
        notifyListeners();
      });
    });
  }

  void fetchNewUserInfo() {
    getNewUserInfo().then((value) {
      value.ifSuccess((data) {
        saveNewData(data);
        notifyListeners();
      });
      value.ifFailure((e) {
        notifyListeners();
      });
    });
  }
}

// class UserInfo {
//   factory UserInfo() => _getInstance()!;
//
//   static UserInfo? get instance => _getInstance();
//   static UserInfo? _instance;
//
//   UserInfo._internal();
//
//   UserInfoData? _data;
//   UserInfoData? get data => _data;
//
//   static UserInfo? _getInstance() {
//     _instance ??= UserInfo._internal();
//     return _instance;
//   }
//
//   void save(UserInfoData? data) {
//     if (data != null) {
//       _data = data;
//       String userInfo = userInfoDataToJson(data!);
//       StorageUtils.setValue("userInfo", userInfo);
//     }
//   }
//
//   Future initUserInfo() async {
//     final String userInfoString = await StorageUtils.getValue("userInfo");
//     if (userInfoString.isNotEmpty) {
//       _data = userInfoDataFromJson(userInfoString);
//     }
//   }
//
//   void clear() {
//     _data = null;
//     StorageUtils.setValue("userInfo", "");
//   }
//
//   void fetchUserInfo() {
//     getUserInfo().then((value) {
//       value.ifSuccess((data) {
//         save(data);
//       });
//       value.ifFailure((e) {});
//     });
//   }
// }
