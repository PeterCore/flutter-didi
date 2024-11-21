import 'package:churn/pages/main_page/mine/widgets/withdraws/withdraws_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import '../../../../router_config.dart';

class WithdrawsPage extends StatelessWidget {
  const WithdrawsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.withdrawsRecordPage);
            },
            child: Text("提现记录",
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
        title: "我要提现",
        backgroundPath: UIAssets.source!.bg1,
        child: const WithdrawsWidget());
  }
}
