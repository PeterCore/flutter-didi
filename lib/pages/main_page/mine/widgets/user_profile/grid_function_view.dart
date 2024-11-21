import 'package:dk_utils/components/app_local_image.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../components/app_real_name_auth_container.dart';
import '../../models/grid_item.dart';

class GridFunctionView extends StatelessWidget {
  const GridFunctionView({
    super.key,
    required this.gridList,
    required this.mainTitle,
  });
  final List<GridItem> gridList;
  final String mainTitle;

  Widget _buildMenuItem(GridItem item) {
    return AppRealNameAuthContainer(
      isNeedRealName: item.isNeedReal,
      onClick: (value) {
        // onCallBack?.call(text);
        if (item.isNeedReal == false) {
          item.onClick.call(item.id);
          return;
        }
        if (value && item.isNeedReal == true) {
          item.onClick.call(item.id);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 图标
          AppLocalImage(
            path: item.iconPath,
            width: 40.w,
            height: 40.w,
          ),
          SizedBox(height: 8.h),
          // 文字
          Text(
            item.title,
            style: TextStyle(
                fontSize: 14.sp,
                color: AppTheme().wordPrimaryColor,
                height: 1.2,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildGrid() {
    List<Widget> list = [];
    if (gridList != null && gridList.isNotEmpty) {
      for (GridItem item in gridList) {
        list.add(_buildMenuItem(item));
      }
      return list;
    }
    return [Container()];
  }

  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      horizontal: 16.w,
      vertical: 12.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainTitle ?? "",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.3,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8.h),
          GridView.count(
              crossAxisCount: 4, // 每行 4 个单元格
              mainAxisSpacing: 16, // 上下单元格间距
              crossAxisSpacing: 16, // 左右单元格间距
              shrinkWrap: true, // 使GridView的高度根据内容调整
              physics: const NeverScrollableScrollPhysics(),
              children: _buildGrid()),
        ],
      ),
    );
  }
}
