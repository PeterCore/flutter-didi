import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum OperatorCard {
  setDefault,
  delete,
  edit,
  delivery,
}

class AddressInfoCardWidget extends StatelessWidget {
  const AddressInfoCardWidget(
      {super.key, required this.info, this.onOperatorCard});
  final AddressInfo info;
  final Function(int product, OperatorCard type)? onOperatorCard;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onOperatorCard?.call(info.id ?? 0, OperatorCard.delivery);
      },
      child: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: RoundContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 顶部地区信息
              Text(
                info.address ?? "",
                style: TextStyle(
                    color: AppTheme().wordSecondColor,
                    fontSize: 14.sp,
                    height: 1.3,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 4.h),
              // 地址和姓名、电话
              Text(
                info.location ?? "",
                style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.3),
              ),
              SizedBox(height: 8.h),
              Text(
                '${info.nameMask ?? ""}  ${info.phoneMask ?? ""}',
                style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontSize: 14.sp,
                    height: 1.3,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 16.h),
              // 底部默认设置和按钮
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      //addProvider.setDefaultAddressInfo(id: "${info.id ?? 0}");
                      onOperatorCard?.call(
                          info.id ?? 0, OperatorCard.setDefault);
                    },
                    child: Row(
                      children: [
                        // 默认地址选择
                        Icon(
                            info?.isDefault == 1
                                ? Icons.check_circle
                                : Icons.radio_button_unchecked,
                            color: info.isDefault == 1
                                ? AppTheme().themeBackGroundColor
                                : AppTheme().wordSecondColor),
                        SizedBox(width: 4.w),
                        Text(
                          info.isDefault == 1 ? '已设为默认' : '设为默认',
                          style: TextStyle(
                            color: info.isDefault == 1
                                ? AppTheme().themeBackGroundColor
                                : AppTheme().wordSecondColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      // 删除按钮
                      TextButton(
                        onPressed: () {
                          onOperatorCard?.call(
                              info.id ?? 0, OperatorCard.delete);
                        },
                        child: Text(
                          '删除',
                          style: TextStyle(color: AppTheme().wordSecondColor),
                        ),
                      ),
                      // 编辑按钮
                      TextButton(
                        onPressed: () {
                          // 编辑操作逻辑
                          onOperatorCard?.call(info.id ?? 0, OperatorCard.edit);
                        },
                        child: Text(
                          '编辑',
                          style: TextStyle(color: AppTheme().wordSecondColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
