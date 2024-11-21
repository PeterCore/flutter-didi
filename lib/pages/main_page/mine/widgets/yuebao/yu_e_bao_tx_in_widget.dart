import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../components/pay_psw_sheet.dart';
import '../../logic/withdraws_controller.dart';

class YuEBaoTxInWidget extends StatefulWidget {
  const YuEBaoTxInWidget({super.key, required this.inCash});
  final double inCash;
  @override
  State<YuEBaoTxInWidget> createState() => _YuEBaoTxInWidgetState();
}

class _YuEBaoTxInWidgetState extends State<YuEBaoTxInWidget> {
  TextEditingController usdtController = TextEditingController();
  WithdrawsController withdrawsController = WithdrawsController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void confirmTxIn() {
    if (widget.inCash < 20) {
      EasyLoading.showError("现金余额不足");
      return;
    }
    if (usdtController.text.isEmpty) {
      EasyLoading.showError("请输入转账金额");
      return;
    } else {
      double txCash = double.parse(usdtController.text);
      if (txCash > widget.inCash) {
        EasyLoading.showError("提现余额不足");
        return;
      }
      if (txCash < 20) {
        EasyLoading.showError("转入金额不能低于20USDT");
        return;
      }
    }
    FocusScope.of(context).requestFocus(FocusNode());
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {},
        onConfirm: (pwdPay) {
      EasyLoading.show();
      yuEBaoTxIn(txInCash: usdtController.text, pwd: pwdPay).then((value) {
        value.ifSuccess((data) {
          withdrawsController.getWithdrawsConfig();
          EasyLoading.showSuccess(data.msg ?? "");
          context.pop(true);
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    usdtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '转入方式',
              style: TextStyle(
                  fontSize: 16.sp,
                  color: AppTheme().wordPrimaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.2),
            ),
            SizedBox(
              height: 20.h,
            ),
            RoundContainer(
              vertical: 15.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '提现余额',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.6),
                  ),
                  Text(
                    "${widget.inCash} USDT",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.6),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              '转入金额',
              style: TextStyle(
                  fontSize: 16.sp,
                  color: AppTheme().wordPrimaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.2),
            ),
            SizedBox(
              height: 32.h,
            ),
            RoundContainer(
              vertical: 12.h,
              horizontal: 16.w,
              child: AmountInputWidget(
                controller: usdtController,
                hintText: ' 最低转入20USDT',
                digit: 6,
                prefixString: '\$',
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GradientButton(
                text: "确认转入",
                onPressed: (index) {
                  confirmTxIn();
                }),
          ],
        ),
      ),
    );
  }
}
