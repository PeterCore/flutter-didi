import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import '../widgets/account_detail/account_detail_widget.dart';

class AccountDetailPage extends StatelessWidget {
  const AccountDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {},
            child: Text("投资记录",
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
        title: "账户详情",
        backgroundPath: UIAssets.source!.bg1,
        child: const AccountDetailWidget());
  }
}
