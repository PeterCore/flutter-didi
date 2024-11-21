import 'package:churn/pages/main_page/mine/widgets/loan/repay_loan_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/loan_status_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';

class LoanWidget extends StatefulWidget {
  const LoanWidget({super.key});

  @override
  State<LoanWidget> createState() => _LoanWidgetState();
}

class _LoanWidgetState extends State<LoanWidget> {
  LoanStatusModel? loanStatusModel;
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchLoanStatus();
    });
    super.initState();
  }

  void fetchLoanStatus() {
    getLoanStatus().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            loanStatusModel = data;
          });
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  Future<void> applyUserLoan() async {
    if (controller.text.isEmpty) {
      EasyLoading.showError("请输入金额");
      return;
    }
    if (controller.text.isNotEmpty) {
      double loanNumber = double.parse(controller.text);
      double loanLimit = double.parse(
        loanStatusModel?.money ?? "0",
      );
      double loanMinAmount = 200;
      if (loanNumber > loanLimit) {
        EasyLoading.showError("贷款金额超过可贷金额");
        return;
      }
      if (loanNumber < loanMinAmount) {
        EasyLoading.showError("贷款金额低于最低借款金额");
        return;
      }
    }
    FocusScope.of(context).requestFocus(FocusNode());
    // showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (pwd) {
    //   checkLoanContract(money: controller.text);
    // });
    final isRefresh = await pushPage(context,
        path: PagePath.loanContractPreViewPage,
        ext: {
          "money": controller.text,
          "isSignature": loanStatusModel?.esignature == 1
        });
    if (isRefresh == true) {
      fetchLoanStatus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
        child: Column(
          children: [
            RoundContainer(
              vertical: 12.h,
              horizontal: 16.w,
              backgroundColor: AppTheme().roundContainerBlackColor,
              child: RoundContainer(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0), //阴影y轴偏移量
                      blurRadius: 0, //阴影模糊程度
                      spreadRadius: 0.0 //阴影扩散程度
                      ),
                ],
                backgroundColor: Colors.black,
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '可贷金额(USDT)',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                height: 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            loanStatusModel?.money ?? "0",
                            style: TextStyle(
                                fontSize: 24.sp,
                                color: Colors.white,
                                height: 1.2,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '已贷金额(USDT)',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                height: 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            loanStatusModel?.yidaimoney ?? "0",
                            style: TextStyle(
                                fontSize: 24.sp,
                                color: Colors.white,
                                height: 1.2,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RoundContainer(
              vertical: 16.w,
              horizontal: 14.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '贷款金额',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: AppTheme().wordPrimaryColor,
                        height: 1.2,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  RoundContainer(
                    horizontal: 0.w,
                    vertical: 0.h,
                    backgroundColor: AppTheme().inputBackgroundColor,
                    child: AmountInputWidget(
                      digit: 2,
                      controller: controller,
                      hintText: "请输入金额",
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    '最低申请借贷金额 200 USDT',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppTheme().wordPrimaryColor,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GradientButton(
                      text: "申请贷款",
                      onPressed: (index) {
                        applyUserLoan();
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RoundContainer(
              vertical: 20.h,
              horizontal: 16.w,
              child: Column(
                children: [
                  Text(
                    '待还金额(USDT)',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppTheme().wordSecondColor,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    loanStatusModel?.jiemoney ?? "0",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: AppTheme().wordSecondColor,
                        height: 1.2,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GradientButton(
                      borderWidth: 1.0,
                      borderColor: AppTheme().dividerLineColor,
                      textColor: AppTheme().wordPrimaryColor,
                      gradientColors: const [
                        Colors.transparent,
                        Colors.transparent
                      ],
                      text: "申请还款",
                      onPressed: (index) async {
                        await pushPage(context,
                            path: PagePath.loanRepaymentPage,
                            ext: {"type": LoanRepaymentType.normal.code});
                      })
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RoundContainer(
              vertical: 20.h,
              horizontal: 16.w,
              child: Column(
                children: [
                  Text(
                    '已还金额(USDT)',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppTheme().wordSecondColor,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    loanStatusModel?.huanmoney ?? "0",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: AppTheme().wordSecondColor,
                        height: 1.2,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GradientButton(
                      borderWidth: 1.0,
                      borderColor: AppTheme().dividerLineColor,
                      textColor: AppTheme().wordPrimaryColor,
                      gradientColors: const [
                        Colors.transparent,
                        Colors.transparent
                      ],
                      text: "还款记录",
                      onPressed: (index) {
                        pushPage(context, path: PagePath.loanRepayRecordPage);
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RoundContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "贷款说明",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: AppTheme().wordSecondColor,
                        height: 1.2,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    loanStatusModel?.daikuancontent ?? "",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppTheme().wordSecondColor,
                        height: 1.2,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
