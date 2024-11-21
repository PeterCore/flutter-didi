import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:common_utils/common_utils.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/toast_utils.dart';
import 'package:flutter/material.dart';

class CopyPkView extends StatefulWidget {
  const CopyPkView({super.key});

  @override
  State<CopyPkView> createState() => _CopyPkViewState();
}

class _CopyPkViewState extends State<CopyPkView> {
  String pk = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          RoundContainer(
            horizontal: 12.w,
            vertical: 12.h,
            backgroundColor: Colors.white,
            child: Column(
              children: [
                Text("粘贴您的密钥以登录",
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
                  height: 22.5.h,
                ),
                GestureDetector(
                  onLongPress: () {
                    FlutterClipboard.paste().then((value) {
                      // Do what ever you want with the value.
                      if (value.isNotEmpty) {
                        setState(() {
                          pk = value;
                        });
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.0.w, vertical: 12.0.h), // 内边距
                    decoration: BoxDecoration(
                      color: AppTheme().inputBackgroundColor, // 背景颜色，带点透明度
                      borderRadius: BorderRadius.circular(10), // 圆角
                    ),
                    child: Center(
                      child: Text(
                        pk.isEmpty
                            ? (context.l10n?.longTouchPasteKeys ?? "")
                            : pk,
                        style: TextStyle(
                            fontSize: 14.sp,
                            height: 1.2,
                            fontWeight: FontWeight.w400,
                            color: pk.isEmpty
                                ? AppTheme().wordSecondColor
                                : AppTheme().wordPrimaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 33.h,
                ),
                GradientButton(
                    text: context.l10n?.signIn ?? "",
                    onPressed: (index) {
                      if (!TextUtil.isEmpty(pk)) {
                        EasyLoading.show();
                        verifyPkLogin({"miyao": pk, "sortid": 1}).then((value) {
                          EasyLoading.dismiss();
                          value.ifSuccess((data) {
                            LoginInfo.instance!
                                .saveAppToken(
                                    LoginInfo.instance?.tempToken ?? "")
                                .then((_) {
                              // LoginInfo.instance!.onListenLoginInfo?.call();
                              replacePage(context, path: "/");
                            });
                          });
                          value.ifFailure((e) {
                            EasyLoading.showError(e.message);
                          });
                        });
                      } else {
                        ToastUtils.show("请粘贴密钥");
                      }
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
