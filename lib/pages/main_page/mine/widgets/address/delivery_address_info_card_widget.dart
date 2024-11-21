import 'package:churn/router_config.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class DeliveryAddressInfoCardWidget extends StatelessWidget {
  const DeliveryAddressInfoCardWidget(
      {super.key, required this.info, this.onOperatorCard});

  final AddressInfo info;
  final Function()? onOperatorCard;
  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "收货信息",
                style: TextStyle(
                    color: AppTheme().themeBackGroundColor,
                    fontSize: 14.sp,
                    height: 1.3,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  pushPage(context, path: PagePath.addressManagerPage, ext: {});
                },
                child: SizedBox(
                  height: 20.h,
                  child: Text(
                    "更换地址",
                    style: TextStyle(
                        color: AppTheme().themeBackGroundColor,
                        fontSize: 14.sp,
                        height: 1.3,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          // 顶部地区信息
          Text(
            info.address ?? "",
            style: TextStyle(
                color: AppTheme().wordSecondColor,
                fontSize: 14.sp,
                height: 1.3,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8.h),
          // 地址和姓名、电话
          Text(
            info.location ?? "",
            style: TextStyle(
                color: AppTheme().wordPrimaryColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.3),
          ),
          const SizedBox(height: 8),
          Text(
            '${info.nameMask ?? ""}  ${info.phoneMask ?? ""}',
            style: TextStyle(
                color: AppTheme().wordSecondColor,
                fontSize: 16.sp,
                height: 1.3,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
