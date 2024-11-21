import 'package:churn/pages/main_page/mine/widgets/transaction_detail/transaction_detail_tabBar_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import '../models/transaction_request_model.dart';

class TransactionDetailPage extends StatefulWidget {
  const TransactionDetailPage({super.key});

  @override
  State<TransactionDetailPage> createState() => _TransactionDetailPageState();
}

class _TransactionDetailPageState extends State<TransactionDetailPage> {
  List<TransactionRequestModel> requestList = [];
  ValueNotifier<String> timeDate = ValueNotifier<String>("");
  int selectedType = 1;
  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          // List<int> types = [1, 2, 3, 5, 4, 7];
          // List<String> names = [
          //   "全部",
          //   "股权明细",
          //   "积分明细",
          //   "余额宝明细",
          //   "奖券明细",
          //   "签到明细",
          // ];
          List<int> types = [1, 3, 5, 4, 7];
          List<String> names = [
            "全部",
            "积分明细",
            "余额宝明细",
            "奖券明细",
            "签到明细",
          ];
          for (int i = 0; i < types.length; i++) {
            TransactionRequestModel item = TransactionRequestModel(
                name: names[i],
                type: types[i],
                formatTime: "0",
                onSelectedTimestamp: (formatTime, type) {});
            requestList.add(item);
          }
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              PickerBottomPicker.pickerDateTime(context,
                  onSelected: (selectedDateTime) {
                timeDate.value = selectedDateTime;
                final requestModel =
                    requestList.firstWhere((e) => e.type == selectedType);
                requestModel.formatTime = selectedDateTime;
                requestModel.selected(selectedDateTime, selectedType);
              });
            },
            child: ValueListenableBuilder<String>(
              builder: (context, value, _) {
                return Text(value.isEmpty ? "选择时间" : value,
                    style: TextStyle(
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        height: 1.4));
              },
              valueListenable: timeDate,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
        title: "交易明细",
        backgroundPath: UIAssets.source!.bg1,
        child: requestList.isEmpty
            ? Container()
            : TransactionDetailTabBarWidget(
                requestList: requestList,
                onSelectType: (type) {
                  if (mounted) {
                    selectedType = type;
                    final requestModel =
                        requestList.firstWhere((e) => e.type == selectedType);
                    if (requestModel.formatTime == "0") {
                      timeDate.value = "";
                    } else {
                      timeDate.value = requestModel.formatTime;
                    }
                  }
                },
              ));
  }
}
