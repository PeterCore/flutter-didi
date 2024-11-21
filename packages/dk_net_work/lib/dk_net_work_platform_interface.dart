import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dk_net_work_method_channel.dart';

abstract class DkNetWorkPlatform extends PlatformInterface {
  /// Constructs a DkNetWorkPlatform.
  DkNetWorkPlatform() : super(token: _token);

  static final Object _token = Object();

  static DkNetWorkPlatform _instance = MethodChannelDkNetWork();

  /// The default instance of [DkNetWorkPlatform] to use.
  ///
  /// Defaults to [MethodChannelDkNetWork].
  static DkNetWorkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DkNetWorkPlatform] when
  /// they register themselves.
  static set instance(DkNetWorkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
