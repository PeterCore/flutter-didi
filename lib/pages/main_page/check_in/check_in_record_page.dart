import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../../../components/black_styles_container.dart';
import 'check_in_record_list_widget.dart';

class CheckInRecordPage extends StatelessWidget {
  const CheckInRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        isSafeArea: true,
        title: "签到记录",
        backgroundPath: UIAssets.source!.bg2,
        child: const CheckInRecordListWidget());
  }
}
