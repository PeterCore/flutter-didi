import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/online_rechange/online_recharge_widget.dart';
import 'package:churn/router_config.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class OnlineRechargePage extends StatelessWidget {
  const OnlineRechargePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.rechargeRecodePage);
            },
            child: Text("充值记录",
                style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 1.4)),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
        title: "在线充值",
        backgroundPath: UIAssets.source!.bg1,
        child: const OnlineRechargeWidget());
  }
}
