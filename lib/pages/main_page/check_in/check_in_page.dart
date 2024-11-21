import 'package:churn/components/base_container.dart';
import 'package:churn/pages/main_page/check_in/check_in_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../router_config.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.checkInRecordPage);
            },
            child: Text("签到记录",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 1.4)),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
        backgroundColor: AppTheme().themeBackGroundColor,
        child: const CheckInWidget());
  }
}
