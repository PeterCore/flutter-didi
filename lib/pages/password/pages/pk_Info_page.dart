import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../components/black_styles_container.dart';
import '../widgets/pk_info_view.dart';

class PkInfoPage extends StatelessWidget {
  const PkInfoPage({super.key, this.safeKeys});
  final String? safeKeys;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: context.l10n?.keysTitle ?? "",
        backgroundColor: AppTheme().themeBackGroundColor,
        // backgroundPath: UIAssets.source!.bg3,
        child: PkInfoView(
          safeKeys: safeKeys,
        ));
  }
}
