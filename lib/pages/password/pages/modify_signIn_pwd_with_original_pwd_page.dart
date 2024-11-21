import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../../../components/black_styles_container.dart';
import '../widgets/modify_signIn_pwd/modify_signIn_pwd_with_original_pwd_widget.dart';

class ModifySignInPwdWithOriginalPwdPage extends StatelessWidget {
  const ModifySignInPwdWithOriginalPwdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "修改登录密码",
        backgroundPath: UIAssets.source!.bg2,
        child: const ModifySignInPwdWithOriginalPwdWidget());
  }
}
