import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:encrypt/encrypt.dart' as ECP;
import 'package:encrypt/encrypt.dart';

class BaseUtils {
  /// 判断网络是否连接
  static Future<bool> isNetWorkConnected() async {
    var connectResult = await (Connectivity().checkConnectivity());
    return connectResult != ConnectivityResult.none;
  }

  ///AES解密
  static String aesDecrypted(String aesKey, String ivKey, String text) {
    try {
      final key = ECP.Key.fromUtf8(aesKey);
      final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
      String decrypt64 = encrypter.decrypt64(text, iv: IV.fromUtf8(ivKey));
      return decrypt64;
    } catch (err) {
      return "";
    }
  }
}
