import 'package:flutter_test/flutter_test.dart';
import 'package:dk_net_work/dk_net_work.dart';
import 'package:dk_net_work/dk_net_work_platform_interface.dart';
import 'package:dk_net_work/dk_net_work_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDkNetWorkPlatform
    with MockPlatformInterfaceMixin
    implements DkNetWorkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DkNetWorkPlatform initialPlatform = DkNetWorkPlatform.instance;

  test('$MethodChannelDkNetWork is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDkNetWork>());
  });

  test('getPlatformVersion', () async {
    DkNetWork dkNetWorkPlugin = DkNetWork();
    MockDkNetWorkPlatform fakePlatform = MockDkNetWorkPlatform();
    DkNetWorkPlatform.instance = fakePlatform;

    expect(await dkNetWorkPlugin.getPlatformVersion(), '42');
  });
}
