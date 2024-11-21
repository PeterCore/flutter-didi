import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/mine/widgets/user_profile/user_tag_view.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/components/app_local_image.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum NMadeType {
  level,
  agentName,
  teams,
}

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key, required this.model, this.onClick});
  final UserInfoViewModel model;
  final Function(NMadeType type)? onClick;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppLocalImage(
          path: UIAssets.source!.logo3,
          width: 60.w,
          height: 60.w,
        ),
        SizedBox(
          width: 12.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${model.data?.isreal == 1 ? "" : "未实名"}${model.data?.mobile ?? ""}",
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 20.sp,
                      height: 1.4,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 7.w,
                ),
                GestureDetector(
                  onTap: () {
                    onClick?.call(NMadeType.level);
                  },
                  child: UserTagView(
                    content: model.newData?.level ?? "",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    onClick?.call(NMadeType.agentName);
                  },
                  child: UserTagView(
                    content: model.newData?.agentname ?? "",
                    isVip: false,
                    iconColor: const Color(0xFF6D68ED),
                    textColor: const Color(0xFF6D68ED),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                SizedBox(
                  width: 8.w,
                ),
                GestureDetector(
                  onTap: () {
                    onClick?.call(NMadeType.teams);
                  },
                  child: UserTagView(
                    content: model.newData?.teams ?? "",
                    isVip: false,
                    iconColor: const Color(0xFF9A68ED),
                    textColor: const Color(0xFF9A68ED),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
