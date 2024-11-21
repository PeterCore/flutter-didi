import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/market/widgets/exchange_record_widget.dart';
import 'package:dk_utils/components/dialog/wmm_dialog.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../assets_tool/ui_assets.dart';

class ExchangeRecordPage extends StatelessWidget {
  const ExchangeRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    String rules = "";
    return BlackStylesContainer(
        title: "兑换记录",
        rightActions: [
          GestureDetector(
            onTap: () {
              // pushPage(context, path: PagePath.exchangeRecodePage);
              if (rules.isNotEmpty) {
                WmmDialog.showWMMDialog(context, title: "兑换规则", content: rules);
              }
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: '兑换规则',
                    style: TextStyle(
                        color: AppTheme().themeBackGroundColor,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp)),
                WidgetSpan(
                    child: SizedBox(
                  width: 2.w,
                )),
                WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.help,
                      color: AppTheme().themeBackGroundColor,
                      size: 16.sp,
                    )),
                WidgetSpan(
                    child: SizedBox(
                  width: 5.w,
                )),
              ]),
            ),
          ),
        ],
        backgroundPath: UIAssets.source!.bg2,
        child: ExchangeRecordWidget(onGetRules: (value) {
          rules = value;
        }));
  }
}
