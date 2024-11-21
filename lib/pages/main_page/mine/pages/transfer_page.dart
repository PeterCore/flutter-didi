import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/transfer/transfer_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../router_config.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.transferRecordPage);
            },
            child: Text("转账记录",
                style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 1.4)),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
        title: "我要转账",
        backgroundPath: UIAssets.source!.bg1,
        child: const TransferWidget());
  }
}
