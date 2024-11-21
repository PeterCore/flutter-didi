import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_net_work/models/guides_user_result_model.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class UserGuideListWidget extends StatelessWidget {
  const UserGuideListWidget({super.key, required this.list});
  final GuideItemList? list;
  @override
  Widget build(BuildContext context) {
    if (list == null || list!.arr!.isEmpty) {
      return Center(
        child: AppLocalImage(
          path: UIAssets.source!.icEmpty,
          width: 112.w,
          height: 112.w,
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: ListView.builder(
        itemCount: list!.arr!.length,
        itemBuilder: (context, index) {
          final item = list!.arr![index];
          return UserGuideCardWidget(
            item: item,
          );
        },
      ),
    );
  }
}

class UserGuideCardWidget extends StatelessWidget {
  const UserGuideCardWidget({super.key, required this.item});
  final GuideItem item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: RoundContainer(
        horizontal: 12.w,
        vertical: 25.h,
        child: Row(
          children: [
            netImageCached(item?.thumbUrl ?? "",
                width: 20.w, radius: 10, height: 20.w),
            SizedBox(
              width: 16.w,
            ),
            Text(
              item.name ?? "",
              style: TextStyle(
                  color: AppTheme().wordPrimaryColor,
                  fontSize: 16.sp,
                  height: 1.1,
                  fontWeight: FontWeight.w500),
              // 显示完整内容
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppTheme().wordPrimaryColor,
              size: 12.w,
            ),
          ],
        ),
      ),
    );
  }
}
