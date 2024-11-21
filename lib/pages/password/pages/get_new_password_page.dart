import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/utils/app_style.dart';
import 'package:flutter/material.dart';

import '../../../components/black_styles_container.dart';
import '../widgets/reset_password_success_view.dart';

class GetNewPasswordPage extends StatelessWidget {
  const GetNewPasswordPage({super.key, this.tempPsw = ''});
  final String tempPsw;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {},
            child: Text(context.l10n?.contactOnline ?? "",
                style: AppStyle()
                    .titleRegular_30(color: AppTheme().themeBackGroundColor)),
          ),
        ],
        title: context.l10n?.resetPsw ?? "",
        backgroundColor: AppTheme().themeBackGroundColor,
        // backgroundPath: UIAssets.source!.bg2,
        child: ResetPasswordSuccessView(
          tempPsw: tempPsw,
        ));
  }
}
