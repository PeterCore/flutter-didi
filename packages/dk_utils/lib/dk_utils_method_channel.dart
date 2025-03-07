import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dk_utils_platform_interface.dart';

/// An implementation of [DkUtilsPlatform] that uses method channels.
class MethodChannelDkUtils extends DkUtilsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dk_utils');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
