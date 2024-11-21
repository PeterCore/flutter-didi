import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/app_download_info_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dk_utils/dk_lib.dart';

class VersionUpdateState {
  final String currentVersion;
  final String newVersion;
  final List<List2> appDownloadList;
  final String content;

  VersionUpdateState({
    this.currentVersion = "加载中...",
    this.newVersion = "加载中...",
    this.appDownloadList = const [],
    this.content = "",
  });

  VersionUpdateState copyWith({
    String? currentVersion,
    String? newVersion,
    List<List2>? appDownloadList,
    String? content,
  }) {
    return VersionUpdateState(
      currentVersion: currentVersion ?? this.currentVersion,
      newVersion: newVersion ?? this.newVersion,
      appDownloadList: appDownloadList ?? this.appDownloadList,
      content: content ?? this.content,
    );
  }
}

class VersionUpdateController extends StateNotifier<VersionUpdateState> {
  VersionUpdateController() : super(VersionUpdateState()) {
    _loadVersionInfo();
    getAppDownloadListData();
    getAppUpdateInfoData();
  }

  void _launchUpgradeUrl(String url) async {
    if (url.isEmpty) {
      return;
    }
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw '无法打开 $url';
    }
  }
  downloadApp(String type) async {
    final url = state.appDownloadList.firstWhere((element) => element.os == type).url;
    _launchUpgradeUrl(url ?? "");
  }
  Future<void> _loadVersionInfo() async {
    EasyLoading.show();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    state = state.copyWith(currentVersion: packageInfo.version);

    final res =  await fetchHomeInfo();
    res.ifSuccess((data) {
      print(data);
      state = state.copyWith(
        newVersion: data.app?.appNewVersion ?? "",
      );
    });
    res.ifFailure((error) {
      state = state.copyWith(
        newVersion: "加载失败",
      );
    });
    EasyLoading.dismiss();
  }

  Future<void> getAppDownloadListData() async {
    final res = await getAppDownloadList();
    res.ifSuccess((data) {
      state = state.copyWith(
        appDownloadList: data.list2 ?? [],
      );
    });
    res.ifFailure((error) {
      
    });
  }

  Future<void> getAppUpdateInfoData() async {
    final res = await getAppUpdateInfo();
    res.ifSuccess((data) {
      state = state.copyWith(
        content: data.app?.hotUpContent ?? "",
      );
    });
  }
}

final versionUpdateProvider = StateNotifierProvider.autoDispose<VersionUpdateController, VersionUpdateState>((ref) {
  return VersionUpdateController();
});