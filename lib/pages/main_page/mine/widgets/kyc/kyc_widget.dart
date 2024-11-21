import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/mine/logic/kyc_controller.dart';
import 'package:churn/pages/main_page/mine/widgets/kyc/audits_kyc_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/kyc/first_step_kyc_widget.dart';
import 'package:flutter/material.dart';

class KycWidget extends StatefulWidget {
  const KycWidget({super.key});

  @override
  State<KycWidget> createState() => _KycWidgetState();
}

class _KycWidgetState extends State<KycWidget> {
  final KycController controller = KycController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.getKycUserInfo();
      controller.addListener(_onKycChange);
    });
  }

  void _onKycChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onKycChange);
    super.dispose();
  }

  Widget _buildKycWidget() {
    bool isNoCommit = controller.kycInfoViewModel.certification?.stats == -1;
    bool openHeaderTail =
        controller.kycInfoViewModel.certification?.isCardImage == 1;
    bool openHands = controller.kycInfoViewModel.certification?.ishandheld == 1;

    if (isNoCommit) {
      return FirstStepKycWidget(
        isHands: openHands,
        isHeaderTail: openHeaderTail,
        onUpload: ((p) {
          controller.commitCard(
              name: p.$1, idCard: p.$2, zm: p.$3, fm: p.$4, sc: p.$5);
        }),
      );
    } else {
      if (controller.kycInfoViewModel.certification != null) {
        int kycStep = controller.kycInfoViewModel.certification?.stats ?? 0;
        String name = controller.kycInfoViewModel.certification?.realname ?? "";
        String idCardNo = controller.kycInfoViewModel.certification?.card ?? "";
        if (kycStep == 0) {
          return AuditsKycWidget(
              title: "实名资料审核中\n请稍后再来查看审核结果",
              imagePath: UIAssets.source!.idauditing,
              name: name,
              idCardNo: idCardNo);
        } else if (kycStep == 1) {
          return AuditsKycWidget(
              title: "实名资料已审核通过！",
              imagePath: UIAssets.source!.idaudited,
              name: name,
              idCardNo: idCardNo);
        }
      }
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return _buildKycWidget();
  }
}
