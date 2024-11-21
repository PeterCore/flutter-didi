import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dk_utils_method_channel.dart';

abstract class DkUtilsPlatform extends PlatformInterface {
  /// Constructs a DkUtilsPlatform.
  DkUtilsPlatform() : super(token: _token);

  static final Object _token = Object();

  static DkUtilsPlatform _instance = MethodChannelDkUtils();

  /// The default instance of [DkUtilsPlatform] to use.
  ///
  /// Defaults to [MethodChannelDkUtils].
  static DkUtilsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DkUtilsPlatform] when
  /// they register themselves.
  static set instance(DkUtilsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
