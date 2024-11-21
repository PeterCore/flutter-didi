import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/account_detail_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';

class AccountDetailWidget extends StatefulWidget {
  const AccountDetailWidget({super.key});

  @override
  State<AccountDetailWidget> createState() => _AccountDetailWidgetState();
}

class _AccountDetailWidgetState extends State<AccountDetailWidget> {
  AccountDetailData? detail;

  @override
  void initState() {
    // TODO: implement initState
    EasyLoading.show();
    getAccountDetail().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            detail = data.data;
          });
        }
      });
    });

    super.initState();
  }

  Widget buildInfoItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 4.w, // 紫色原点大小
              backgroundColor: Colors.purple, // 紫色原点颜色
            ),
            SizedBox(width: 6.w), // 间距
            Text(title,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().wordSecondColor,
                    fontWeight: FontWeight.w400,
                    height: 1.2)),
          ],
        ),
        SizedBox(height: 8.h),
        Text(value,
            style: TextStyle(
                fontSize: 20.sp,
                color: AppTheme().wordPrimaryColor,
                fontWeight: FontWeight.w700,
                height: 1.2)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          children: [
            RoundContainer(
              imagePath: UIAssets.source!.icCardBg,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('累计投资(USDT)',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w400,
                              height: 1.2)),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(detail?.amount ?? "0.00",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 1.2)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('累计返本(USDT)',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w400,
                              height: 1.2)),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(detail?.txmoney ?? "0.00",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              height: 1.2)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            RoundContainer(
              vertical: 16.h,
              horizontal: 12.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildInfoItem('待收利息(USDT)', detail?.dmoneys ?? "0.0"),
                      buildInfoItem('已收利息(USDT)', detail?.ymoneys ?? "0.0"),
                    ],
                  ),
                  SizedBox(
                    height: 30.h, // 控制分割线的高度
                    child: Divider(
                      color: AppTheme().dividerLineColor, // 分割线颜色
                      thickness: 0.5, // 分割线厚度
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildInfoItem(
                          '待收本金(USDT)', detail?.buyjsamounts ?? "0.0"),
                      buildInfoItem('正在提现(USDT)', detail?.withdrawals ?? "0.0"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h), // 间距
            Text(detail?.mark ?? "",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    height: 1.2)),
          ],
        ),
      ),
    );
  }
}
