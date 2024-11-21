import 'package:churn/pages/main_page/mine/widgets/loan/repay_loan_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import '../../../../router_config.dart';

class LoanRepaymentPage extends StatelessWidget {
  const LoanRepaymentPage(
      {super.key, required this.type, required this.contractNo});
  final int type;
  final String contractNo;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.loanRepayRecordPage);
            },
            child: Text("还款记录",
                style: TextStyle(
                    color: AppTheme().themeBackGroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 1.4)),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
        title: type == LoanRepaymentType.normal.code ? "申请还款" : "提前还款",
        backgroundPath: UIAssets.source!.bg1,
        child: RepayLoanWidget(
          type: type,
          contractNo: contractNo ?? "",
        ));
  }
}
