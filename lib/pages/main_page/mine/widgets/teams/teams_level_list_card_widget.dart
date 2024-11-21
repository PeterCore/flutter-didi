import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_net_work/models/team_level_config.dart';
import 'package:dk_net_work/models/team_level_result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class TeamsLevelListCardWidget extends StatelessWidget {
  const TeamsLevelListCardWidget(
      {super.key, required this.info, required this.config});
  final Nextlevel info;
  final TeamLevelConfig? config;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 12.h),
      child: RoundContainer(
        backgroundColor: const Color(0xFFD2CFDB),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 标题部分
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLocalImage(
                  path: UIAssets.source!.tmsl,
                  width: 24.w,
                  height: 24.w,
                ),
                SizedBox(width: 8.w),
                Text(
                  info.name ?? "",
                  style: TextStyle(
                    color: const Color(0xFF567DAF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h), // 间距
            // 投资信息部分
            _buildInvestmentInfo(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  // 投资信息部分
  Widget _buildInvestmentInfo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // 白色背景
        borderRadius: BorderRadius.circular(12.r), // 内部圆角
      ),
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTwoColumnRow('一级投资人数(人)', '二级投资人数(人)', '${info.onezrs ?? 0}',
              '${info.twouzrs ?? 0}'),
          SizedBox(height: 32.h),
          _buildTwoColumnRow('三级投资人数(人)', '三级内总投资人数(人)',
              '${info.threezrs ?? 0}', '${info.totltzrs ?? 0}'),
          SizedBox(height: 32.h),
          _buildTwoColumnRow('团队总投资人数(人)', '三级内总投资金额(USDT)',
              '${info.teamstotleren ?? 0}', '${info.totlttzmoeny ?? 0}'),
          SizedBox(height: 32.h),
          _buildCombinedInfo(),
        ],
      ),
    );
  }

  // 团队总投资金额和奖励制度合并在一起
  Widget _buildCombinedInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 团队总投资金额部分
        Text(
          '团队总投资金额(USDT)',
          style: TextStyle(
              color: const Color(0xFF3B3A45),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              height: 1.2),
        ),
        SizedBox(height: 8.h),
        Text(
          '${info.teamsmoney ?? 0}',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              height: 1.2,
              color: AppTheme().wordSecondColor),
        ),
        SizedBox(height: 32.h), // 与下方的奖励制度部分留些间距

        // 奖励制度部分
        Text(
          '奖励制度',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              height: 1.2,
              color: AppTheme().wordSecondColor),
        ),
        if (config?.teamsRate == 1) SizedBox(height: 8.h),
        if (config?.teamsRate == 1)
          _buildRewardText('奖励团队当月总投资金额的 ', '${info.rate}%'),
        if (config?.teamsInte == 1) SizedBox(height: 8.h),
        if (config?.teamsInte == 1)
          _buildRewardText('奖励当月团队投资金额的 ', '${info.inte}%'),
        if (config?.teamsInte == 1)
          Text(
            '（团队当月投资金额减去团队当月提现金额为团队当月有效金额）',
            style: TextStyle(
                color: const Color(0xFF3B3A45),
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                height: 1.2),
          ),
        if (config?.teamsSalary == 1) SizedBox(height: 8.h),
        if (config?.teamsSalary == 1)
          _buildRewardText('每月可领取持续奖金 ', '${info.salary}USDT'),
        if (config?.teamsUplervermoney == 1) SizedBox(height: 8.h),
        if (config?.teamsUplervermoney == 1)
          _buildRewardText('升级后一次性奖励 ', '${info.uplervermoney}USDT'),
      ],
    );
  }

  // 创建奖励制度的红色文本部分
  Widget _buildRewardText(String label, String value) {
    return RichText(
      text: TextSpan(
        text: label,
        style: TextStyle(
            color: const Color(0xFF3B3A45),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            height: 1.2),
        children: [
          TextSpan(
            text: value,
            style: TextStyle(
                color: AppTheme().redThemeColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                height: 1.2),
          ),
        ],
      ),
    );
  }

  // 创建两列的行，用于投资信息
  Widget _buildTwoColumnRow(
      String label1, String label2, String value1, String value2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label1,
                  style: TextStyle(
                      color: const Color(0xFF3B3A45),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2)),
              SizedBox(height: 4.h),
              Text(
                value1,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    height: 1.2,
                    color: AppTheme().wordSecondColor),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 左对齐
            children: [
              Text(label2,
                  style: TextStyle(
                      color: const Color(0xFF3B3A45),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2)),
              SizedBox(height: 4.h),
              Text(
                value2,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    height: 1.2,
                    color: AppTheme().wordSecondColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
