import 'package:flutter/cupertino.dart';
import 'package:flutter_pickers/pickers.dart';

import 'constants.dart';

class PickerBottomPicker {
  static void pickerNormal(BuildContext context,
      {List<String?> pickers = const [],
      Function(String value)? onSelected,
      String? title}) {
    Pickers.showSinglePicker(context,
        data: pickers, pickerStyle: configPaymentPicker(mainTitle: title),
        onConfirm: (p, position) {
      if (p is String) {
        onSelected?.call(p);
      }
    }, onChanged: (p, value) {});
  }

  static void pickerDateTime(BuildContext context,
      {Function(String dateTime)? onSelected}) {
    Pickers.showDatePicker(context, pickerStyle: configDatePicker(),
        onConfirm: (p) {
      onSelected?.call("${p.year}-${p.month}-${p.day}");
    });
  }

  static void pickerAddress(BuildContext context,
      {Function(String province, String city, String? town)? onSelected}) {
    Pickers.showAddressPicker(
      context,
      addAllItem: false,
      pickerStyle: configAddressPicker(),
      initProvince: "北京市",
      initCity: "东城区",
      initTown: "",
      onConfirm: (p, c, t) {
        onSelected?.call(p, c, t);
      },
    );
  }
}
