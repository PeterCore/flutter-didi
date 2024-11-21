import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:churn/pages/main_page/mine/logic/version_update_controller.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_utils/dk_lib.dart';
import '../../../../router_config.dart';


class VersionUpdatePage extends ConsumerWidget {
  const VersionUpdatePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(versionUpdateProvider);
    final controller = ref.read(versionUpdateProvider.notifier);

    return BlackStylesContainer(
      title: "版本升级",
      backgroundPath: UIAssets.source!.bg1,
      child: Container(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            _buildVersionInfoCard(state),
            SizedBox(height: 32.h),
            _buildUpdateButtons(context, state, controller),
            SizedBox(height: 32.h),
            if (state.content.isNotEmpty)
            _buildUpdateInstructions(state),
          ],
        ),
      ),
    );
  }

  Widget _buildVersionInfoCard(VersionUpdateState state) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
        margin: EdgeInsets.only(top: 60.h),
          padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 40.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: const Color(0xFF6D68ED),
          ),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Image.asset(UIAssets.source!.versionName,
                    width: 75.w, height: 30.w),
              ),
              SizedBox(height: 20.h),
              _buildVersionRow('当前版本：', state.currentVersion),
              SizedBox(height: 10.h),
              _buildVersionRow('最新版本：', state.newVersion),
            ],
          ),
        ),
        Positioned(
          top: 30.h,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(UIAssets.source!.versionLogo,
                width: 72.w, height: 72.w),
          ),
        ),
      ],
    );
  }

  Widget _buildVersionRow(String label, String version) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: TextStyle(fontSize: 20.sp, color: Colors.white)),
        Text(version, style: TextStyle(fontSize: 20.sp, color: Colors.white)),
      ],
    );
  }

  Widget _buildUpdateButtons(BuildContext context, VersionUpdateState state,
      VersionUpdateController controller) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF15151D),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
          padding: EdgeInsets.symmetric(vertical: 12.h),
        ),
        onPressed: () {
          pushPage(context, path: PagePath.appDownloadPage);
        },
        child: Text('重新下载APP',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 15.sp, color: Colors.white)),
      ),
    );
  }

  Widget _buildUpdateInstructions(VersionUpdateState state) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Text(
        state.content,
        style: TextStyle(color: const Color(0xFF15151D), fontSize: 14.sp),
      ),
    );
  }
}
