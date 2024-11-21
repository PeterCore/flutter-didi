import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import '../../../../components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/logic/version_update_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDownloadPage extends ConsumerWidget {
  const AppDownloadPage({super.key});

  


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(versionUpdateProvider.notifier);
    return BlackStylesContainer(
        title: "版本更新",
        backgroundPath: UIAssets.source!.bg1,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              "请选择你的手机类型",
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppTheme().themeTextColor,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 37.h, horizontal: 40.w),
              child: RoundContainer(
                backgroundColor: AppTheme().themeBackGroundColor,
                child: Column(
                  children: [
                    CustomButton(
                        text: "安卓手机下载",
                        imagePath: UIAssets.source!.icalg,
                        onPressed: () {
                          controller.downloadApp('android');
                        }),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomButton(
                        text: "苹果手机下载",
                        imagePath: UIAssets.source!.icilg,
                        onPressed: () {
                          controller.downloadApp('ios');
                        }),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomButton(
                        text: "华为手机下载",
                        imagePath: UIAssets.source!.ichwlg,
                        onPressed: () {
                          controller.downloadApp('huawei');
                        }),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
