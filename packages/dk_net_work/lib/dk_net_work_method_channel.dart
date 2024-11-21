import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dk_net_work_platform_interface.dart';

/// An implementation of [DkNetWorkPlatform] that uses method channels.
class MethodChannelDkNetWork extends DkNetWorkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dk_net_work');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
