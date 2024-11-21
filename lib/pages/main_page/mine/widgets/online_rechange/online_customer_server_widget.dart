import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlineCustomerServerWidget extends StatelessWidget {
  const OnlineCustomerServerWidget({super.key, this.payment});
  final Payment? payment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          payment?.payDesc ?? "",
          style: TextStyle(
              fontSize: 12.sp,
              color: AppTheme().wordPrimaryColor,
              fontWeight: FontWeight.w400,
              height: 2),
        ),
        SizedBox(
          height: 20.h,
        ),
        GradientButton(text: "在线客服充值", onPressed: (index) {}),
      ],
    );
  }
}
