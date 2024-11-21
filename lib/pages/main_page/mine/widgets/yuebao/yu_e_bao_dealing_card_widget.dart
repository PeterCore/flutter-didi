import 'package:dk_net_work/models/yu_e_bao_transactions_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class YuEBaoDealingCardWidget extends StatelessWidget {
  const YuEBaoDealingCardWidget({super.key, this.item});
  final YuEBaoTransactionsItem? item;
  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      backgroundColor: Colors.white,
      vertical: 20.h,
      horizontal: 12.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item?.moneylogNotice ?? "",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w500,
                    height: 1.2),
              ),
              Text(
                '${item?.moneylogStatus ?? ""}${item?.moneylogMoney}',
                style: TextStyle(
                    fontSize: 13.sp,
                    color: AppTheme().redThemeColor,
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item?.createdAt ?? "",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFFBCBCBC),
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
              const Spacer(),
              Text(
                "现有余额宝金额 ",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: const Color(0xFFBCBCBC),
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
              Text(
                "${item?.moneylogHouamount ?? "0"}",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().wordSecondColor,
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
