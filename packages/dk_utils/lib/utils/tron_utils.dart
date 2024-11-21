import 'base58.dart';

class TronUtils {
  /// Validates the given tron address.
  static bool isValidTronAddress(String address, [int version = 0x41]) {
    // 1. 检查是否以 T 开头
    if (!address.startsWith('T')) {
      return false;
    }
    // 2. 检查地址长度是否为 34 字符
    if (address.length != 34) {
      return false;
    }

    try {
      final decoded = Base58CheckCodec.bitcoin().decode(address);
      return decoded.version == version;
    } catch (e) {
      //
    }

    return true;
  }
}
