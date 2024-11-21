import 'package:churn/router_config.dart';
import 'package:dk_net_work/models/new_list_result_model.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class NewsCell extends StatelessWidget {
  const NewsCell({super.key, this.model});
  final Articlescategory? model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushPage(context,
            path: PagePath.newDetailPage,
            ext: {"content": model?.content ?? ""});
      },
      child: Card(
          clipBehavior: Clip.antiAlias,
          color: AppTheme().roundContainerColor,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
          child: Container(
            padding: EdgeInsets.all(18.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model?.title ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              height: 1.3,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp)),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(model?.updatedAt ?? "",
                          maxLines: 1,
                          style: TextStyle(
                              color: AppTheme().wordSecondColor,
                              height: 1.2,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  flex: 1,
                  child: netImageCached(
                    radius: 0,
                    model?.image ?? "",
                    height: 66.h,
                    width: 66.w,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
