import 'package:churn/l10n/l10n.dart';
import 'package:churn/router_config.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../assets_tool/ui_assets.dart';

final copyProvider =
    StateNotifierProvider.autoDispose<CopyNotifier, String>((ref) {
  return CopyNotifier();
});

// 计数器状态管理类 (StateNotifier)
class CopyNotifier extends StateNotifier<String> {
  CopyNotifier() : super(""); // 初始化状态为 0

  void copyTemp({String? tempPsw = ''}) {
    state = tempPsw ?? "";
  }
}

class ResetPasswordSuccessView extends StatelessWidget {
  const ResetPasswordSuccessView({super.key, required this.tempPsw});
  final String tempPsw;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 47.h, right: 18.w, left: 18.w, bottom: 22.h),
      child: Column(
        children: [
          AppLocalImage(
            path: UIAssets.source!.verifyPk,
            width: 81.w,
            height: 81.w,
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(context.l10n?.resetPswS ?? "",
              style: AppStyle()
                  .titleRegular_30(color: AppTheme().themeBackGroundColor)),
          SizedBox(
            height: 20.h,
          ),
          Consumer(builder: (context, ref, child) {
            final copyPsw = ref.watch(copyProvider);
            final copyP = ref.watch(copyProvider.notifier);
            return Card(
                clipBehavior: Clip.antiAlias,
                color: AppTheme().roundContainerColor,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    top: 15.h,
                    bottom: 22.h,
                  ),
                  child: Column(
                    children: [
                      Text(context.l10n?.tempPsw ?? "",
                          style: AppStyle().titleRegular_34(
                              color: AppTheme().wordPrimaryColor)),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(tempPsw ?? "",
                          style: AppStyle().bodySemibold_61(
                              color: AppTheme().wordPrimaryColor)),
                      SizedBox(
                        height: 22.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          FlutterClipboard.copy(tempPsw).then((value) {
                            ToastUtils.show("复制成功");
                            copyP.copyTemp(tempPsw: tempPsw);
                          });
                        },
                        child: Container(
                          height: 45.h,
                          decoration: BoxDecoration(
                            color:
                                AppTheme().inputBackgroundColor, // 背景颜色，带点透明度
                            borderRadius: BorderRadius.circular(45.h / 2), // 圆角
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppLocalImage(
                                  path: UIAssets.source!.copy,
                                  width: 22.w,
                                  height: 22.w,
                                ),
                                SizedBox(
                                  width: 7.h,
                                ),
                                Text(
                                  context.l10n?.copy ?? "",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      height: 1.2,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme().wordPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Text(
                        "温馨提示：\n登录成功后请立即使用临时密码修改登录密码(临时密码可长按输入框粘贴)",
                        style: TextStyle(
                            fontSize: 11.sp,
                            height: 1.7,
                            fontWeight: FontWeight.w400,
                            color: AppTheme().wordSecondColor),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      GradientButton(
                        enable: copyPsw.isNotEmpty == true,
                        text: context.l10n?.copyPwSignIn ?? "",
                        onPressed: (index) {
                          FlutterClipboard.copy(tempPsw);
                          popPage(context, path: PagePath.signInPage);
                        },
                      )
                      // bodySemibold_61
                    ],
                  ),
                ));
          }),
        ],
      ),
    );
  }
}
