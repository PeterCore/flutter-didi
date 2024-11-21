import 'package:churn/pages/main_page/market/widgets/card/exchange_recode_card_widget.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/exchange_recode_result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class ExchangeRecordWidget extends StatefulWidget {
  const ExchangeRecordWidget({super.key, this.onGetRules});
  final Function(String rules)? onGetRules;

  @override
  State<ExchangeRecordWidget> createState() => _ExchangeRecordWidgetState();
}

class _ExchangeRecordWidgetState extends State<ExchangeRecordWidget> {
  List<ExchangeRecodeItem> recodeList = [];
  int page = 1;
  @override
  void initState() {
    // TODO: implement initState
    initData();
    super.initState();
  }

  void initData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      getExchangeRecodeList(page: page).then((value) {
        EasyLoading.dismiss();
        value.ifSuccess((data) {
          if (mounted) {
            widget.onGetRules?.call(data.rules ?? "");
            setState(() {
              recodeList.addAll(data.list?.data ?? []);
            });
          }
        });
        value.ifFailure((e) {
          if (mounted) {
            EasyLoading.showError(e.message);
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        itemCount: recodeList.length,
        itemBuilder: (context, index) {
          final item = recodeList[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: ScaleAnimation(
                scale: 0.5,
                child: FadeInAnimation(
                    child: ExchangeRecodeCardWidget(item: item))),
          );
        },
      ),
    );
  }
}
