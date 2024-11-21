import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalletAddressRechargeWidget extends StatelessWidget {
  const WalletAddressRechargeWidget(
      {super.key, this.payment, this.walletAddress});
  final Payment? payment;
  final String? walletAddress;
  @override
  Widget build(BuildContext context) {
    final qrCode = QrCode(
      8,
      QrErrorCorrectLevel.H,
    )..addData(walletAddress ?? "");
    QrImage qrImage = QrImage(qrCode);

    return Column(
      children: [
        Text(
          payment?.payDesc ?? "",
          style: TextStyle(
              fontSize: 12.sp,
              color: AppTheme().wordSecondColor,
              fontWeight: FontWeight.w400,
              height: 2),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: 160.w,
          height: 160.w,
          child: PrettyQrView(
            qrImage: qrImage,
            decoration: const PrettyQrDecoration(background: Colors.white),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          walletAddress ?? "",
          style: TextStyle(
              fontSize: 13.sp,
              color: AppTheme().wordSecondColor,
              fontWeight: FontWeight.w400,
              height: 1.2),
        ),
        SizedBox(
          height: 50.h,
        ),
        GradientButton(
            text: "复制地址",
            onPressed: (index) {
              Clipboard.setData(ClipboardData(text: walletAddress ?? ""));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('已复制'),
                ),
              );
            }),
      ],
    );
  }
}
