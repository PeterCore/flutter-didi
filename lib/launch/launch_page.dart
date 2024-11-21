import 'dart:math';

import 'package:churn/config/app_config.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_utils/components/app_local_image.dart';
import 'package:dk_utils/components/timer_count_down/timer_count_down.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/router.dart';
import 'package:dk_utils/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets_tool/ui_assets.dart';

class AppLaunchPage extends StatefulWidget {
  const AppLaunchPage({super.key});

  @override
  State<AppLaunchPage> createState() => _AppLaunchPageState();
}

class _AppLaunchPageState extends State<AppLaunchPage>
    with TickerProviderStateMixin {
  final AssetImage image = AssetImage(UIAssets.source!.imgSplash);

  AnimationController? _animationController;
  Animation<double>? _animation;
  bool _disposed = false;

  _startAnimation() {
    if (_disposed == true) {
      return;
    }
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _animation =
        CurvedAnimation(parent: _animationController!, curve: Curves.linear);
    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_animation!);
    _animationController?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    _animationController?.repeat();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAnimation();
      AppConfig.instance!.isLaunchInit = true;
      CheckPickerNetWork.instance!.initBaseUrl().then((value) {
        if (value) {
          if (mounted) {
            if (LoginInfo.instance!.appToken.isEmpty) {
              replacePage(context, path: PagePath.signInPage);
            } else {
              replacePage(context, path: "/");
            }
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(image, context);
    return Container(
      decoration: BoxDecoration(
        color: AppTheme().roundContainerColor,
        image: DecorationImage(
          image: AssetImage(UIAssets.source!.imgSplash),
          fit: BoxFit.cover, // 让图片覆盖整个容器
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 500.h,
            right: 0,
            child: Column(
              children: [
                Transform.rotate(
                  angle: _animation?.value ?? 0,
                  child: AppLocalImage(
                    path: UIAssets.source!.whiteLoading,
                    width: 20.w,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(context.l10n?.checkLoading ?? "",
                    style: AppStyle().headlineRegular_28(
                        color: AppTheme().inputBackgroundColor)),
                SizedBox(
                  height: 12.h,
                ),
                Countdown(
                  seconds: 15,
                  build: (BuildContext context, double time) => Text(
                      "${time.toInt().toString()}s",
                      style: AppStyle().headlineRegular_28(
                          color: AppTheme().inputBackgroundColor)),
                  interval: const Duration(seconds: 1),
                  onFinished: () {
                    if (mounted) {
                      if (LoginInfo.instance!.appToken.isEmpty) {
                        replacePage(context, path: PagePath.signInPage);
                      } else {
                        replacePage(context, path: "/");
                      }
                    } //print('Timer is done!');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(UIAssets.source!.imgSplash),
              fit: BoxFit.fill, // 让图片覆盖整个容器
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              height: 20,
              color: Colors.red,
            )
            // Transform.rotate(
            //   angle: _animation?.value ?? 0,
            //   child: AppLocalImage(
            //     path: UIAssets.source!.whiteLoading,
            //     width: 40.w,
            //   ),
            // ),
          ],
        ),
      ],
    );
    // precacheImage(image, context);
    // return AppPage<LaunchLogic>(
    //   isUseScaffold: false,
    //   childBuilder: (s) {
    //     return AppStack(
    //       color: AppCore().theme.colorFillBgGrey,
    //       width: ScreenUtils.screenWidth,
    //       height: ScreenUtils.screenHeight,
    //       children: [
    //         Image(
    //           image: image,
    //           fit: BoxFit.cover,
    //           gaplessPlayback: true,
    //           width: ScreenUtils.screenWidth,
    //           height: ScreenUtils.screenHeight,
    //         ),
    //         Obx(() => logic.isEnterLoading.value
    //             ? AppColumn(
    //                 margin: EdgeInsets.only(top: ScreenUtils.navbarHeight),
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 width: double.infinity,
    //                 color: Colors.transparent,
    //                 alignment: Alignment.center,
    //                 children: [
    //                   SizedBox(
    //                     height: 12.h,
    //                   ),
    //                   Transform.rotate(
    //                     angle: _animation?.value ?? 0,
    //                     child: AppLocalImage(
    //                       path: AppCore().resource.imgLoading,
    //                       width: 20.w,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5.h,
    //                   ),
    //                   Text(
    //                     S.tr(CommonTrans.checkLoading),
    //                     style: AppCore().style.bodyRegular_14(
    //                         color: AppCore().theme.colorTxtInvPrimary),
    //                   ),
    //                   SizedBox(
    //                     width: 8.h,
    //                   ),
    //                   Text(
    //                     "${logic.count.value}s",
    //                     style: AppCore().style.bodyRegular_14(
    //                         color: AppCore().theme.colorTxtInvPrimary),
    //                   )
    //                 ],
    //               )
    //             : const SizedBox.shrink())
    //       ],
    //     );
    //   },
    // );
  }

  @override
  void dispose() {
    _disposed = true;
    _animationController?.dispose();
    super.dispose();
  }
}
