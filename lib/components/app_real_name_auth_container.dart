import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/components/button/app_auth_click_container.dart';
import 'package:dk_utils/components/dialog/alter_dialog.dart';
import 'package:dk_utils/router.dart';
import 'package:flutter/material.dart';

import '../router_config.dart';

const noRealAuth = ["退出登录"];

class AppRealNameAuthContainer extends StatelessWidget {
  const AppRealNameAuthContainer(
      {super.key, this.child, this.onClick, required this.isNeedRealName});
  final Widget? child;
  final Function(bool text)? onClick;
  final bool isNeedRealName;
  @override
  Widget build(BuildContext context) {
    return AppAuthClickContainer(
      onClick: (value) {
        if (value == false && isNeedRealName) {
          showCustomDialog(
            context: context,
            title: '提示',
            content: '请先进行实名认证',
            onConfirm: () {
              // 确定按钮的处理逻辑
              pushPage(context, path: PagePath.kycUserPage);
              Navigator.of(context).pop();
            },
          );
          return;
        }
        onClick?.call(value);
      },
      onAuth: () {
        final UserInfoViewModel userInfoViewModel =
            serviceLocator<UserInfoViewModel>();
        return userInfoViewModel.data?.isreal == 1;
      },
      child: child,
    );
  }
}
