import 'package:churn/l10n/l10n.dart';
import 'package:churn/pages/main_page/mine/widgets/kyc/kyc_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

///实名认证
class KycUserPage extends StatefulWidget {
  const KycUserPage({super.key});

  @override
  State<KycUserPage> createState() => _KycUserPageState();
}

class _KycUserPageState extends State<KycUserPage> {
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: context.l10n?.kycUser ?? "",
        backgroundPath: UIAssets.source!.bg2,
        child: const KycWidget());
  }
}
