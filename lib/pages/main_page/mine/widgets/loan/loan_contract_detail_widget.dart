import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/loan_contract_detail_info_model.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class LoanContractDetailWidget extends StatefulWidget {
  const LoanContractDetailWidget({super.key, required this.contractNo});
  final String contractNo;
  @override
  State<LoanContractDetailWidget> createState() =>
      _LoanContractDetailWidgetState();
}

class _LoanContractDetailWidgetState extends State<LoanContractDetailWidget> {
  LoanContractDetailInfoModel? contractDetail;
  String signatureUrl = "";
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLoanContractDetail(contractNo: widget.contractNo).then((value) {
        value.ifSuccess((data) {
          if (mounted) {
            setState(() {
              contractDetail = data;
            });
          }
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (contractDetail == null) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundContainer(
              horizontal: 16.h,
              vertical: 16.w,
              child: Stack(
                children: [
                  HtmlWidget(
                    contractDetail?.data?.content ?? "",
                    customWidgetBuilder: (element) {
                      if (element.attributes["src"] != null) {
                        return Container(
                          height: 0,
                        );
                      }
                      return null;
                    },
                  ),
                  Positioned(
                      right: 20.w,
                      bottom: 40.h,
                      child: netImageCached(contractDetail?.data?.hetong ?? "",
                          width: 100.w,
                          height: 100.w,
                          radius: 0,
                          background: Colors.transparent))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
