import 'package:churn/pages/main_page/mine/widgets/signaturepad/signaturepad_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class SignaturePadPage extends StatelessWidget {
  const SignaturePadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "电子签名",
        backgroundPath: UIAssets.source!.bg2,
        child: const SignaturePadWidget());
  }
}
