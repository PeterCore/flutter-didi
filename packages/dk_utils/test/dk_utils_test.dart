import 'package:flutter_test/flutter_test.dart';
import 'package:dk_utils/dk_utils.dart';
import 'package:dk_utils/dk_utils_platform_interface.dart';
import 'package:dk_utils/dk_utils_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDkUtilsPlatform
    with MockPlatformInterfaceMixin
    implements DkUtilsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DkUtilsPlatform initialPlatform = DkUtilsPlatform.instance;

  test('$MethodChannelDkUtils is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDkUtils>());
  });

  test('getPlatformVersion', () async {
    DkUtils dkUtilsPlugin = DkUtils();
    MockDkUtilsPlatform fakePlatform = MockDkUtilsPlatform();
    DkUtilsPlatform.instance = fakePlatform;

    expect(await dkUtilsPlugin.getPlatformVersion(), '42');
  });
}
