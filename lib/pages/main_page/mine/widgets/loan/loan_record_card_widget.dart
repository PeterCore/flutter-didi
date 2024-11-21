import 'package:dk_net_work/models/loan_contract_record_result.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

enum LoanContractHandler {
  earlyRepay,
  browseContract,
  downLoadContract,
}

class LoanRecordCardWidget extends StatelessWidget {
  const LoanRecordCardWidget(
      {super.key, required this.item, this.onHandlerClick});
  final LoanContractRecordItem item;
  final Function(
      (
        LoanContractHandler handler,
        String contractNo,
      ))? onHandlerClick;
  @override
  Widget build(BuildContext context) {
    Map<int, String> status = {
      0: "已还款",
      1: "使用中",
      2: "贷还款",
    };
    if (item.status == 0) {
      return Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: RoundContainer(
          vertical: 16.h,
          horizontal: 12.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '还款金额：',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: AppTheme().wordPrimaryColor),
                  ),
                  Text(
                    '${item.number ?? 0}USDT',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme().themeBackGroundColor,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '还款ID   ：',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: AppTheme().wordSecondColor),
                  ),
                  Text(
                    '${item.bianhao ?? ""}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme().wordSecondColor,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '还款时间：',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: AppTheme().wordSecondColor),
                  ),
                  Text(
                    item.createdAt ?? "",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme().wordSecondColor,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      child: RoundContainer(
        vertical: 16.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '贷款金额',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: AppTheme().wordPrimaryColor),
                ),
                Text(
                  '${item.number ?? 0}USDT',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppTheme().wordPrimaryColor,
                    height: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '时间: ${item.createdAt ?? ""}',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: AppTheme().wordPrimaryColor),
                ),
                Text(
                  '${status[item.status ?? 1]}',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: AppTheme().themeBackGroundColor),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40.w,
              child: RoundContainer(
                horizontal: 12.w,
                vertical: 12.h,
                backgroundColor: const Color(0xFFF1F3F5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '合同编号：${item.bianhao ?? "0"}',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          color: AppTheme().wordPrimaryColor),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '释放时间：${item.updatedAt ?? ""}',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          color: AppTheme().wordPrimaryColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (item.status != 0)
                  Expanded(
                    child: GradientButton(
                        borderWidth: 1.0,
                        borderColor: AppTheme().dividerLineColor,
                        textColor: AppTheme().wordPrimaryColor,
                        gradientColors: const [
                          Colors.transparent,
                          Colors.transparent
                        ],
                        text: "提前还款",
                        onPressed: (index) {
                          onHandlerClick?.call((
                            LoanContractHandler.earlyRepay,
                            item.bianhao ?? "0",
                          ));
                          // pushPage(context,
                          //     path: PagePath.loanRepaymentPage,
                          //     ext: {
                          //       "type": LoanRepaymentType.early.code,
                          //       "contractNo": item.bianhao ?? "0"
                          //     });
                        }),
                  ),
                if (item.status != 0)
                  SizedBox(
                    width: 20.w,
                  ),
                if (item.status != 0)
                  Expanded(
                    child: GradientButton(
                        borderWidth: 1.0,
                        borderColor: AppTheme().dividerLineColor,
                        textColor: AppTheme().wordPrimaryColor,
                        gradientColors: const [
                          Colors.transparent,
                          Colors.transparent
                        ],
                        text: "查看合同",
                        onPressed: (index) async {
                          onHandlerClick?.call((
                            LoanContractHandler.browseContract,
                            item.bianhao ?? "0",
                          ));
                        }),
                  ),
              ],
            ),
            if (item.status != 0)
              SizedBox(
                height: 5.h,
              ),
            if (item.status != 0)
              GradientButton(
                  horizontal: 0,
                  borderWidth: 1.0,
                  borderColor: Colors.transparent,
                  textColor: AppTheme().themeBackGroundColor,
                  gradientColors: const [
                    Colors.transparent,
                    Colors.transparent
                  ],
                  text: "下载合同",
                  onPressed: (index) async {
                    onHandlerClick?.call((
                      LoanContractHandler.downLoadContract,
                      item.bianhao ?? "0",
                    ));
                  }),
          ],
        ),
      ),
    );
  }
}
