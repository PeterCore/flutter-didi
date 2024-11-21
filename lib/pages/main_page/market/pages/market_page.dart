import 'package:churn/components/black_styles_container.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../router_config.dart';
import '../widgets/market_view.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.exchangeRecodePage);
            },
            child: Text("兑换记录",
                style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 1.4)),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
        title: "积分商城",
        leading: Container(),
        backgroundPath: UIAssets.source!.bg1,
        child: const MarketWidget());
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
