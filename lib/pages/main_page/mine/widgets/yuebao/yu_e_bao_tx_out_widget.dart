import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../components/pay_psw_sheet.dart';
import '../../logic/withdraws_controller.dart';

class YuEBaoTxOutWidget extends StatefulWidget {
  const YuEBaoTxOutWidget({super.key, required this.outCash});
  final double outCash;
  @override
  State<YuEBaoTxOutWidget> createState() => _YuEBaoTxOutWidgetState();
}

class _YuEBaoTxOutWidgetState extends State<YuEBaoTxOutWidget> {
  TextEditingController usdtController = TextEditingController();
  WithdrawsController withdrawsController = WithdrawsController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void confirmTxIn() {
    if (widget.outCash < 20) {
      EasyLoading.showError("余额不足");
      return;
    }
    if (usdtController.text.isEmpty) {
      EasyLoading.showError("请输入转账金额");
      return;
    } else {
      double txCash = double.parse(usdtController.text);
      if (txCash > widget.outCash) {
        EasyLoading.showError("已超过余额");
        return;
      }
      if (txCash < 0.01) {
        EasyLoading.showError("转出金额不能低于0.01USDT");
        return;
      }
    }
    FocusScope.of(context).requestFocus(FocusNode());
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {},
        onConfirm: (pwdPay) {
      EasyLoading.show();
      yuEBaoTxOut(txOutCash: usdtController.text, pwd: pwdPay).then((value) {
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
              '转出方式',
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
                    '余额宝总余额',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.6),
                  ),
                  Text(
                    "${widget.outCash} USDT",
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
              '转出金额',
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
              horizontal: 16.w,
              vertical: 12.h,
              child: AmountInputWidget(
                controller: usdtController,
                hintText: ' 最低转出0.01USDT',
                digit: 6,
                prefixString: '\$',
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GradientButton(
                text: "确认转出",
                onPressed: (index) {
                  confirmTxIn();
                }),
          ],
        ),
      ),
    );
  }
}
