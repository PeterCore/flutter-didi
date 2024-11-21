import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

enum LoanRepaymentType {
  normal(0),
  early(1);

  final int code;
  const LoanRepaymentType(this.code);
}

class RepayLoanWidget extends StatefulWidget {
  const RepayLoanWidget(
      {super.key, required this.type, required this.contractNo});
  final int type;
  final String contractNo;
  @override
  State<RepayLoanWidget> createState() => _RepayLoanWidgetState();
}

class _RepayLoanWidgetState extends State<RepayLoanWidget> {
  String repayAmount = "0.00";
  String investAmount = "0.00";
  String repaymentDesc = "";

  TextEditingController amountController = TextEditingController(text: "0.00");

  @override
  void initState() {
    // TODO: implement initState
    initData();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    amountController.dispose();
    super.dispose();
  }

  void initData() {
    fetchLoanStatus();
    getContractInfo();
  }

  void repayLoanMoney() {
    if (amountController.text.isEmpty ||
        double.parse(amountController.text) == 0) {
      EasyLoading.showError("请输入金额");
      return;
    }
    FocusScope.of(context).requestFocus(FocusNode());
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (pwd) {
      EasyLoading.show();
      repayLoan(money: amountController.text, pwd: pwd).then((value) {
        EasyLoading.dismiss();
        value.ifSuccess((data) {
          //context.pop(true);
          showCustomDialog(
            context: context,
            title: '提示',
            content: '还款成功',
            onConfirm: () {
              // 确定按钮的处理逻辑
              Navigator.of(context).pop();
              pushPage(context, path: PagePath.loanRepayRecordPage);
            },
          );
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  void earlyRepayLoanMoney() {
    if (amountController.text.isEmpty ||
        double.parse(amountController.text) == 0) {
      EasyLoading.showError("请输入金额");
      return;
    }
    FocusScope.of(context).requestFocus(FocusNode());
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (pwd) {
      EasyLoading.show();
      earlyRepayLoan(
              money: amountController.text,
              pwd: pwd,
              contractNo: widget.contractNo ?? "")
          .then((value) {
        EasyLoading.dismiss();
        value.ifSuccess((data) {
          showCustomDialog(
            context: context,
            title: '提示',
            content: '还款成功',
            onConfirm: () {
              // 确定按钮的处理逻辑
              Navigator.of(context).pop();
              pushPage(context, path: PagePath.loanRepayRecordPage);
            },
          );
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  void fetchLoanStatus() {
    getLoanStatus().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            investAmount = data?.amount ?? "0.0";
            if (widget.type == LoanRepaymentType.normal.code) {
              repayAmount = data?.jiemoney ?? "0.00";
              amountController.text = repayAmount;
              repaymentDesc = data?.huankuancontent ?? "";
            } else {
              repaymentDesc = data?.earlyRepayContent ?? "";
            }
          });
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  void getContractInfo() {
    if (widget.type == LoanRepaymentType.normal.code) return;
    getLoanContractDetail(contractNo: widget.contractNo ?? "").then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            repayAmount = "${data?.data?.numberAmount ?? 0}";
            amountController.text = repayAmount;
          });
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            RoundContainer(
              horizontal: 12.w,
              child: Row(
                mainAxisAlignment: widget.type == LoanRepaymentType.normal.code
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: [
                  Text(
                    widget.type == LoanRepaymentType.normal.code
                        ? '待还金额(USDT)'
                        : "还款编号",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                        color: AppTheme().wordPrimaryColor),
                  ),
                  if (widget.type == LoanRepaymentType.early.code)
                    SizedBox(
                      width: 16.w,
                    ),
                  Text(
                    widget.type == LoanRepaymentType.normal.code
                        ? repayAmount
                        : widget.contractNo,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                        color: widget.type == LoanRepaymentType.normal.code
                            ? AppTheme().themeBackGroundColor
                            : AppTheme().wordPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            RoundContainer(
              vertical: 16.w,
              horizontal: 14.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.type == LoanRepaymentType.normal.code
                            ? '还款金额'
                            : "提前还款",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: AppTheme().wordPrimaryColor,
                            height: 1.2,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '投资余额：${investAmount}USDT',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppTheme().wordPrimaryColor,
                            height: 1.2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  RoundContainer(
                    horizontal: 0.w,
                    vertical: 0.h,
                    backgroundColor: AppTheme().inputBackgroundColor,
                    child: AmountInputWidget(
                      readOnly: widget.type == LoanRepaymentType.early.code,
                      digit: 2,
                      controller: amountController,
                      hintText: "请输入金额",
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GradientButton(
                      text: "申请还款",
                      onPressed: (index) {
                        if (widget.type == LoanRepaymentType.early.code) {
                          earlyRepayLoanMoney();
                        } else if (widget.type ==
                            LoanRepaymentType.normal.code) {
                          repayLoanMoney();
                        }
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            if (repaymentDesc.isNotEmpty)
              RoundContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "还款说明",
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
                      repaymentDesc,
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
