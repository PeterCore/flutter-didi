import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/recipients_records_result.dart';
import 'package:dk_utils/components/dialog/custom_bottom_sheet.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class RecipientsRecordsWidget extends StatefulWidget {
  const RecipientsRecordsWidget({super.key});

  @override
  State<RecipientsRecordsWidget> createState() =>
      _RecipientsRecordsWidgetState();
}

class _RecipientsRecordsWidgetState extends State<RecipientsRecordsWidget> {
  List<RecipientsListElement> recipients = [
    const RecipientsListElement(name: "姓名", account: "收款账号")
  ];

  void initData() {
    getRecipientsRecords().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            final tempList = data.list ?? [];
            recipients = [
              ...[const RecipientsListElement(name: "姓名", account: "收款账号")],
              ...tempList
            ];
          });
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "历史收款人",
              style: TextStyle(
                  color: AppTheme().wordPrimaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.3),
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final item = recipients[index];
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.name ?? "",
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3),
                        ),
                        Text(
                          item.account ?? "",
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: recipients.length,
                separatorBuilder: (BuildContext context, int index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child:
                      Divider(height: 0.5, color: AppTheme().dividerLineColor),
                ),
              ),
            ),
          ],
        ));
  }
}

void showRecipientsRecordBottomSheet(BuildContext context,
    {Function()? onCancel}) {
  showBlankBottomSheet(context, const RecipientsRecordsWidget(), onCancel: () {
    onCancel?.call();
  });
}
