import 'dart:async';

import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addressInfoProvider =
    ChangeNotifierProvider.autoDispose((ref) => AddressInfoViewModel());

class AddressInfoViewModel extends ChangeNotifier {
  AddressInfoViewModel();

  AddressInfo? _selectDeliveryAddressInfo;
  AddressInfo? get selectDeliveryAddressInfo => _selectDeliveryAddressInfo;

  List<AddressInfo> _addressList = [];
  List<AddressInfo> get addressList => _addressList;

  void selected({AddressInfo? selectedAddress}) {
    _selectDeliveryAddressInfo = selectedAddress;
    notifyListeners();
  }

  void pickWithId({int id = 0}) {
    if (_addressList.isNotEmpty) {
      final pickers = _addressList.where((e) => e.id == id).toList();
      if (pickers.isNotEmpty) {
        _selectDeliveryAddressInfo = pickers.first;
      }
    }
    notifyListeners();
  }

  void removeDeliveryAddressInfo({int id = 0}) {
    if (_selectDeliveryAddressInfo != null) {
      if (id == _selectDeliveryAddressInfo?.id) {
        _selectDeliveryAddressInfo = null;
        notifyListeners();
      }
    }
  }

  void removeCurrentDeliveryAddress() {
    _selectDeliveryAddressInfo = null;
    notifyListeners();
  }

  void getDefaultAddress() {
    getDefaultAddressInfo().then((value) {
      value.ifSuccess((data) {
        _selectDeliveryAddressInfo = data?.info;
        notifyListeners();
      });
    });
  }

  Future<bool> fetchAddressList() async {
    Completer<bool> completer = Completer();
    EasyLoading.show();
    getAddressInfoList().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        final list = data.list;
        if (list != null && list.isNotEmpty) {
          _addressList = list;
          if (_selectDeliveryAddressInfo != null) {
            final selectedD = _addressList
                .where((e) => e.id == _selectDeliveryAddressInfo?.id)
                .toList();
            if (selectedD.isNotEmpty) {
              _selectDeliveryAddressInfo = selectedD.first;
            }
          } else {
            final result = _addressList.where((e) => e.isDefault == 1).toList();
            if (result.isNotEmpty) {
              _selectDeliveryAddressInfo = result.first;
            } else {
              _selectDeliveryAddressInfo = null;
            }
          }
          notifyListeners();
          if (!completer.isCompleted) {
            completer.complete(true);
          }
        }
      });
      value.ifFailure((e) {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      });
    });
    return completer.future;
  }

  Future<bool> updateAddress(
      {String pwdPay = '',
      String phone = '',
      String address = '',
      String location = '',
      int id = 0,
      String name = ''}) async {
    Completer<bool> completer = Completer();

    updateAddressInfo(
            pwdPay: pwdPay,
            phone: phone,
            address: address,
            location: location,
            id: id,
            name: name)
        .then((value) {
      EasyLoading.show();
      value.ifSuccess((data) {
        EasyLoading.dismiss();
        if (data.status == 0) {
          if (!completer.isCompleted) {
            completer.complete(fetchAddressList());
          }
        }
      });
      value.ifFailure((e) {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      });
    });
    return completer.future;
  }

  Future<bool> addNewAddressInfo(
      {String pwdPay = '',
      String phone = '',
      String address = '',
      String location = '',
      int isDefault = 0,
      String name = ''}) async {
    Completer<bool> completer = Completer();

    createAddressInfo(
            pwdPay: pwdPay,
            phone: phone,
            address: address,
            location: location,
            isDefault: isDefault,
            name: name)
        .then((value) {
      EasyLoading.show();
      value.ifSuccess((data) {
        EasyLoading.dismiss();
        if (data.status == 0) {
          if (!completer.isCompleted) {
            completer.complete(fetchAddressList());
          }
        }
      });
      value.ifFailure((e) {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      });
    });
    return completer.future;
  }

  Future<bool> deleteAddressInfo({String pwdPay = "", String id = ''}) async {
    Completer<bool> completer = Completer();

    EasyLoading.show();
    deleteAddress(pwdPay: pwdPay, id: int.parse(id)).then((value) {
      EasyLoading.dismiss();
      removeDeliveryAddressInfo(id: int.parse(id));
      value.ifSuccess((data) {
        if (data.status == 0) {
          _addressList.removeWhere((e) => e.id == int.parse(id));
          if (_addressList.isNotEmpty) {
            if (!completer.isCompleted) {
              completer.complete(fetchAddressList());
            }
          }
          notifyListeners();
        }
      });
      value.ifFailure((e) {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      });
    });
    return completer.future;
  }

  void setDefaultAddressInfo({String id = ''}) {
    EasyLoading.show();
    setDefaultAddress(id: id).then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        if (data.status == 0) {
          for (var item in _addressList) {
            item.isDefault = (id == "${item.id}") ? 1 : 0;
          }
          // 将默认地址排在最前
          _addressList.sort((a, b) => (b.isDefault == 1) ? 1 : -1);
          notifyListeners();
        }
      });
      value.ifFailure((e) {});
    });
  }

  Future<bool> getAddressInfo({int productId = 0}) async {
    Completer<bool> completer = Completer();

    EasyLoading.show();
    getUserDefaultAddressInfo(productId: productId).then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        _selectDeliveryAddressInfo = data.info;
        if (!completer.isCompleted) {
          completer.complete(fetchAddressList());
        }
        notifyListeners();
      });
      value.ifFailure((e) {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
        notifyListeners();
        Logger.write('---userdefault is ${e.message} ----');
      });
    });
    return completer.future;
  }
}
