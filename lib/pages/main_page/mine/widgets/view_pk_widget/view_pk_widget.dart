import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:common_utils/common_utils.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/view_pk_result.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';

class ViewPkWidget extends StatefulWidget {
  const ViewPkWidget({super.key});

  @override
  State<ViewPkWidget> createState() => _ViewPkWidgetState();
}

class _ViewPkWidgetState extends State<ViewPkWidget> {
  ViewPkResult? result;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 500)).then((_) {
        showCustomBottomPayPassWordSheet(context, "请输入支付密码", (p) {},
            onConfirm: (pwd) {
          EasyLoading.show();
          viewPwdPKeys(pwd: pwd).then((value) {
            EasyLoading.dismiss();
            value.ifSuccess((data) {
              if (mounted) {
                setState(() {
                  result = data;
                });
              }
            });
            value.ifFailure((e) {
              EasyLoading.showError(e.message);
              context.pop();
            });
          });
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (result == null) return Container();
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          RoundContainer(
            horizontal: 20.w,
            vertical: 20.h,
            backgroundColor: Colors.white,
            child: Column(
              children: [
                Text(context.l10n?.yourKeys ?? "",
                    style: AppStyle().headlineSemibold_28(
                        color: AppTheme().colorTxtInvPrimary)),
                SizedBox(
                  height: 23.h,
                ),
                Image(
                  image: AssetImage(
                    UIAssets.source!.pkKeys,
                  ),
                  width: 114.w,
                  height: 114.w,
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0.w, vertical: 10.0.h), // 内边距
                  decoration: BoxDecoration(
                    color: AppTheme().inputBackgroundColor, // 背景颜色，带点透明度
                    borderRadius: BorderRadius.circular(5), // 圆角
                  ),
                  child: Center(
                    child: Text(
                      result?.miyao ?? "",
                      style: TextStyle(
                          fontSize: 19.sp,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          color: AppTheme().wordPrimaryColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                GradientButton(
                    text: context.l10n?.copyKeys ?? "",
                    onPressed: (index) {
                      if (!TextUtil.isEmpty(result?.miyao)) {
                        FlutterClipboard.copy(result?.miyao ?? "")
                            .then((value) {
                          context.pop();
                          EasyLoading.showSuccess("复制成功");
                        });
                      }
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          RoundContainer(
            horizontal: 20.w,
            vertical: 20.h,
            backgroundColor: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 22.5.h, horizontal: 22.5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("温馨提醒",
                      style: AppStyle()
                          .navTitle_34(color: AppTheme().colorTxtInvPrimary)),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                      maxLines: 80,
                      result?.wxTiShi ?? "",
                      style: AppStyle().headlineRegular_26(
                          color: AppTheme().colorTxtInvPrimary)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
