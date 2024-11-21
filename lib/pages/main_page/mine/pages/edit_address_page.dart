import 'package:churn/components/black_styles_container.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../widgets/address/edit_address_widget.dart';

class EditAddressPage extends StatelessWidget {
  const EditAddressPage({super.key, this.addressInfo});

  final AddressInfo? addressInfo;

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "编辑地址",
        backgroundPath: UIAssets.source!.bg2,
        child: AddressEditWidget(
          addressInfo: addressInfo,
        ));
  }
}
