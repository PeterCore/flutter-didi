import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../components/black_styles_container.dart';
import '../widgets/copy_pk_view.dart';

class CopyPkInfoPage extends StatelessWidget {
  const CopyPkInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: context.l10n?.keysTitle ?? "",
        backgroundColor: AppTheme().themeBackGroundColor,
        // backgroundPath: UIAssets.source!.bg3,
        child: const CopyPkView());
  }
}
