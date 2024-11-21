import 'package:churn/components/black_styles_container.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../widgets/membership/member_ship_level_widget.dart';

///会员等级
class MemberShipLevelPage extends StatelessWidget {
  const MemberShipLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: context.l10n?.memberLevel ?? "",
        backgroundColor: const Color(0xFFD6D2E5),
        child: const MemberShipLevelWidget());
  }
}
