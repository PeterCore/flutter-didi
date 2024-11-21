import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:flutter/cupertino.dart';

import '../models/kyc_certification.dart';

class KycInfoViewModel extends ChangeNotifier {
  KycCertification? _certification;
  KycCertification? get certification => _certification;

  void getKycCertInfo({Function(bool success, String msg)? onComplete}) {
    getKycInfo().then((value) {
      value.ifSuccess((data) {
        _certification = data;
        onComplete?.call(true, "");
        notifyListeners();
      });
      value.ifFailure((e) {
        onComplete?.call(false, e.message);
        notifyListeners();
      });
    });
  }

  void clear() {
    _certification = null;
  }
}
