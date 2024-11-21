import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/content_detail_result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class ContentDetailWidget extends StatefulWidget {
  const ContentDetailWidget({super.key, required this.id});
  final String id;
  @override
  State<ContentDetailWidget> createState() => _ContentDetailWidgetState();
}

class _ContentDetailWidgetState extends State<ContentDetailWidget> {
  ContentDetailData? detailModel;

  @override
  void initState() {
    // TODO: implement initState
    getContentDetail(id: int.parse(widget.id ?? "0")).then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            detailModel = data.data;
          });
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (detailModel == null) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }

    return SingleChildScrollView(child: HtmlWidget(detailModel?.content ?? ""));
  }
}
