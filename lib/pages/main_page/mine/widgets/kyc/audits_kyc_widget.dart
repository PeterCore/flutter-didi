import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class AuditsKycWidget extends StatelessWidget {
  const AuditsKycWidget(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.name,
      required this.idCardNo});
  final String title;
  final String imagePath;
  final String name;
  final String idCardNo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 图标
          AppLocalImage(
            path: imagePath,
            width: 60.w,
            height: 60.h,
          ),
          SizedBox(height: 33.h),
          // 提示文字
          Text(
            title,
            maxLines: 2,
            style: TextStyle(
              fontSize: 18.sp,
              color: AppTheme().themeBackGroundColor,
              height: 1.3,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30.h),
          // 圆角容器包裹姓名和身份证信息
          Container(
            decoration: BoxDecoration(
              color: AppTheme().roundContainerColor, // 背景颜色深灰色
              borderRadius: BorderRadius.circular(12.r), // 圆角边框
            ),
            padding: EdgeInsets.all(20.r), // 容器内边距
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow('姓名', name),
                SizedBox(
                  height: 15.h,
                ), // 构建姓名行
                SizedBox(
                  height: 1, // 控制分割线的高度
                  child: Divider(
                    color: AppTheme().dividerLineColor, // 分割线颜色
                    thickness: 0.1, // 分割线厚度
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                _buildInfoRow('身份证号码', idCardNo), // 构建身份证号行
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppTheme().wordSecondColor,
            fontSize: 16,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: AppTheme().wordPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
