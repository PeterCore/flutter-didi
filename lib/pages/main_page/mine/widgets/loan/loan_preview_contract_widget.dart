import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/loan_contract_content_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../components/pay_psw_sheet.dart';
import '../../../../../router_config.dart';

class LoanContractPreViewWidget extends StatefulWidget {
  const LoanContractPreViewWidget(
      {super.key, required this.money, required this.isSignature});
  final String money;
  final bool isSignature;
  @override
  State<LoanContractPreViewWidget> createState() =>
      _LoanContractPreViewWidgetState();
}

class _LoanContractPreViewWidgetState extends State<LoanContractPreViewWidget> {
  LoanContractContentModel? contractDetail;
  String signatureUrl = "";
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkLoanContract(money: widget.money).then((value) {
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
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
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
            SizedBox(
              height: 16.h,
            ),
            if (widget.isSignature == true)
              Text(
                '签名',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: AppTheme().wordPrimaryColor,
                    height: 1.2,
                    fontWeight: FontWeight.w600),
              ),
            if (widget.isSignature == true)
              SizedBox(
                height: 16.h,
              ),
            if (widget.isSignature == true)
              SizedBox(
                height: 150.h,
                child: RoundContainer(
                  horizontal: 0.w,
                  vertical: 0.h,
                  child: signatureUrl.isNotEmpty
                      ? Center(
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: signatureUrl,
                            errorWidget: (context, url, error) {
                              return const Center(
                                child: Icon(
                                  Icons.error_outline,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                              );
                            },
                            placeholder: (context, url) {
                              return Image(
                                  image: MemoryImage(kTransparentImage));
                            },
                            fadeInDuration: const Duration(milliseconds: 0),
                          ),
                        )
                      : Center(
                          child: GradientButton(
                              borderWidth: 1.0,
                              borderColor: Colors.transparent,
                              textColor: AppTheme().wordPrimaryColor,
                              gradientColors: const [
                                Colors.transparent,
                                Colors.transparent
                              ],
                              text: "点击签名",
                              onPressed: (index) async {
                                final src = await pushPage(context,
                                    path: PagePath.signaturePadPage);
                                if (src is String) {
                                  setState(() {
                                    signatureUrl = src;
                                  });
                                }
                              }),
                        ),
                ),
              ),
            SizedBox(
              height: 16.h,
            ),
            GradientButton(
                text: "确认提交",
                onPressed: (index) {
                  if (widget.isSignature) {
                    if (signatureUrl.isEmpty) {
                      EasyLoading.showError("请电子签名");
                      return;
                    }
                  }
                  showCustomBottomPayPassWordSheet(context, "支付密码", (p) {},
                      onConfirm: (pwd) {
                    EasyLoading.show();
                    applyLoan(money: widget.money, pwd: pwd, sign: signatureUrl)
                        .then((value) {
                      EasyLoading.dismiss();
                      value.ifSuccess((data) {
                        context.pop(true);
                      });
                      value.ifFailure((e) {
                        EasyLoading.showError(e.message);
                      });
                    });
                  });
                })
          ],
        ),
      ),
    );
  }
}
