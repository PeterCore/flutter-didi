import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:common_utils/common_utils.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../router_config.dart';

class PkInfoView extends StatefulWidget {
  const PkInfoView({super.key, this.safeKeys = ""});
  final String? safeKeys;
  @override
  State<PkInfoView> createState() => _PkInfoViewState();
}

class _PkInfoViewState extends State<PkInfoView> {
  @override
  Widget build(BuildContext context) {
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
                      widget.safeKeys ?? "",
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
                      if (!TextUtil.isEmpty(widget.safeKeys)) {
                        FlutterClipboard.copy(widget.safeKeys ?? "")
                            .then((value) {
                          pushPage(
                            context,
                            path: PagePath.copyPkInfoPage,
                          );
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
                      "请先妥善保管密钥到本地再进行下一步操作！（包括但不限于纸质文件，收藏夹，备忘录，截图到相册等，建议同时保存多份）密钥是重置登录密码和支付密码的唯一途径，如果密钥遗失，（可到APP--“我的”--“查看密钥”页面使用支付密码获取再次保存）需要您提供账号的相关信息，比如充值记录证明，您的推荐人信息等，并且需要本人手持身份证拍照发送客服审核处理才能恢复账号，请勿把密钥告知任何人！",
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
