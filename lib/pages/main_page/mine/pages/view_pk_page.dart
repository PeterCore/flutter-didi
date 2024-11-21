import 'package:churn/pages/main_page/mine/widgets/view_pk_widget/view_pk_widget.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../components/black_styles_container.dart';

class ViewPkPage extends StatelessWidget {
  const ViewPkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "我的密钥",
        backgroundColor: AppTheme().themeBackGroundColor,
        child: const ViewPkWidget());
  }
}
