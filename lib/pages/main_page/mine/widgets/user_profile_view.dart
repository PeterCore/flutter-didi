import 'package:churn/pages/main_page/mine/widgets/user_profile/Investment_card.dart';
import 'package:churn/pages/main_page/mine/widgets/user_profile/profile_widget_builder.dart';
import 'package:churn/pages/main_page/mine/widgets/user_profile/user_info_view.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';

class UserProfileView extends WatchingWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserInfoViewModel userInfoViewModel =
        serviceLocator<UserInfoViewModel>();
    Logger.write("userInfo is ${userInfoViewModel.toString()}");
    final newData = watchPropertyValue((UserInfoViewModel m) => m.newData);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: AnimationLimiter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => ScaleAnimation(
                      scale: 0.5,
                      child: FadeInAnimation(child: widget),
                    ),
                children: [
                  UserInfoView(
                    onClick: (type) {
                      if (type == NMadeType.level) {
                        final content =
                            userInfoViewModel.newData?.infolist?[9] ?? "";
                        WmmDialog.showWMMDialog(context,
                            title: "说明", content: content);
                      } else if (type == NMadeType.teams) {
                        final content =
                            userInfoViewModel.newData?.infolist?[10] ?? "";
                        WmmDialog.showWMMDialog(context,
                            title: "说明", content: content);
                      } else if (type == NMadeType.agentName) {
                        final content =
                            userInfoViewModel.newData?.infolist?[2] ?? "";
                        WmmDialog.showWMMDialog(context,
                            title: "说明", content: content);
                      }
                    },
                    model: userInfoViewModel,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  ProfileWidgetBuilder.buildMember(context),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Expanded(
                  //       flex: 1,
                  //       child: CouponCard(
                  //           onClick: () {
                  //             pushPage(context,
                  //                 path: PagePath.couponPage, ext: {"type": 2});
                  //           },
                  //           title: '加息券',
                  //           count: '${newData?.coupon ?? 0}',
                  //           unit: '张',
                  //           highlightColor: Colors.white,
                  //           textColor: Colors.white),
                  //     ),
                  //     SizedBox(
                  //       width: 16.w,
                  //     ),
                  //     Expanded(
                  //       flex: 1,
                  //       child: CouponCard(
                  //           onClick: () {
                  //             pushPage(context,
                  //                 path: PagePath.couponPage, ext: {"type": 1});
                  //           },
                  //           title: '代金券',
                  //           count: '${newData?.voucher ?? 0}',
                  //           unit: '张',
                  //           highlightColor: Colors.white,
                  //           textColor: Colors.white),
                  //     ),
                  //     SizedBox(
                  //       width: 16.w,
                  //     ),
                  //     Expanded(
                  //       flex: 1,
                  //       child: CouponCard(
                  //           title: '可用积分',
                  //           count: '${newData?.integral ?? 0}',
                  //           unit: '积分',
                  //           icon: Icons.help_outline_outlined,
                  //           highlightColor: Colors.white,
                  //           textColor: Colors.white),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 32.h,
                  // ),
                  // ProfileWidgetBuilder.buildEquityCenter(context),
                  // SizedBox(
                  //   height: 24.h,
                  // ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InvestmentCard(
                    onClick: (type) {
                      if (type == NMDEType.invest) {
                        final content =
                            userInfoViewModel.newData?.infolist?[0] ?? "";
                        WmmDialog.showWMMDialog(context,
                            title: "说明", content: content);
                      } else if (type == NMDEType.withdraws) {
                        final content =
                            userInfoViewModel.newData?.infolist?[1] ?? "";
                        WmmDialog.showWMMDialog(context,
                            title: "说明", content: content);
                      } else if (type == NMDEType.total) {
                        final content =
                            userInfoViewModel.newData?.infolist?[4] ?? "";
                        WmmDialog.showWMMDialog(context,
                            title: "说明", content: content);
                      }
                    },
                    investmentBalance:
                        double.parse(userInfoViewModel.data?.amount ?? "0"),
                    withdrawalBalance:
                        double.parse(userInfoViewModel.data?.txmoney ?? "0"),
                    totalEarnings: double.parse(
                        userInfoViewModel.newData?.leijimoney ?? "0"),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileWidgetBuilder.buildUserBusinessCard(context),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileWidgetBuilder.buildW(context),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileWidgetBuilder.buildCommon(context),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileWidgetBuilder.buildSecurityCenter(context)
                ]),
          ),
        ),
      ),
    );
  }

  // ///用户中心
  // Widget _buildCommon(BuildContext context) {
  //   List<GridItem> gridItemF = [
  //     GridItem(
  //         title: "账号详情",
  //         iconPath: UIAssets.source!.zhxq,
  //         id: "accountDetail",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "交易明细",
  //         iconPath: UIAssets.source!.jm,
  //         id: "accountDetail",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "计算器",
  //         iconPath: UIAssets.source!.js,
  //         id: "computer",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "投资制度",
  //         iconPath: UIAssets.source!.tzl,
  //         id: "invest",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "邀请好友",
  //         iconPath: UIAssets.source!.yqhy,
  //         id: "invite",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "推广记录",
  //         iconPath: UIAssets.source!.tgjl,
  //         id: "promotion",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "拼团记录",
  //         iconPath: UIAssets.source!.pj,
  //         id: "lump",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "无忧易贷",
  //         iconPath: UIAssets.source!.zhxq,
  //         id: "wuYou",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //   ];
  //   return GridFunctionView(
  //     gridList: gridItemF,
  //     mainTitle: '常用功能',
  //   );
  // }
  //
  // ///安全中心
  // Widget _buildSecurityCenter(BuildContext context) {
  //   List<GridItem> gridItemS = [
  //     GridItem(
  //         title: "登录密吗",
  //         iconPath: UIAssets.source!.dm,
  //         id: "loginPsw",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "支付密码",
  //         iconPath: UIAssets.source!.zhma,
  //         id: "payPsw",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "实名认证",
  //         iconPath: UIAssets.source!.sm,
  //         id: "kyc",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "提现管理",
  //         iconPath: UIAssets.source!.txj,
  //         id: "withdrawal",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "收货地址",
  //         iconPath: UIAssets.source!.sh,
  //         id: "delivery",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "查看密钥",
  //         iconPath: UIAssets.source!.cy,
  //         id: "keys",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "版本更新",
  //         iconPath: UIAssets.source!.vu,
  //         id: "updateV",
  //         onClick: (value) {},
  //         isNeedReal: false),
  //     GridItem(
  //         title: "退出登录",
  //         iconPath: UIAssets.source!.tcdl,
  //         id: "logout",
  //         onClick: (value) {
  //           showCustomDialog(
  //             context: context,
  //             title: '提示',
  //             content: '确定要退出登录',
  //             onCancel: () {
  //               Navigator.of(context).pop();
  //             },
  //             onConfirm: () {
  //               // 确定按钮的处理逻辑
  //               LoginInfo.instance!.clearToken().then((_) {
  //                 Navigator.of(context).pop();
  //                 //LoginInfo.instance!.onListenLoginInfo?.call();
  //                 Future.delayed(const Duration(milliseconds: 300)).then((_) {
  //                   bool isPop = popPage(context, path: PagePath.signInPage);
  //                   if (!isPop) {
  //                     replacePage(context, path: PagePath.signInPage);
  //                   }
  //                 });
  //               });
  //             },
  //           );
  //         },
  //         isNeedReal: false),
  //   ];
  //
  //   return GridFunctionView(
  //     gridList: gridItemS,
  //     mainTitle: '安全中心',
  //   );
  // }
  //
  // ///抽奖和投资
  // Widget _buildW(BuildContext context) {
  //   return WCard(
  //       lotteryItem: GridItem(
  //           title: '幸运抽奖',
  //           iconPath: UIAssets.source!.cj,
  //           id: "lottery",
  //           onClick: (value) {},
  //           isNeedReal: true),
  //       investorItem: GridItem(
  //           title: "我的投资",
  //           iconPath: UIAssets.source!.tz,
  //           id: "payPsw",
  //           onClick: (value) {},
  //           isNeedReal: true));
  // }
  //
  // ///会员等级
  // Widget _buildMember(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       MemberCard(
  //         item: GridItem(
  //             title: '会员等级',
  //             iconPath: UIAssets.source!.vip,
  //             id: "memberLevel",
  //             onClick: (value) {},
  //             isNeedReal: true),
  //         gradientColors: const [Color(0xFF3B332B), Color(0xFF11100B)], // 渐变背景
  //         textColor: Color(0xFFB08957), // 文本颜色（类似金色）
  //         iconColor: Color(0xFFB08957), // 图标颜色
  //       ),
  //       const SizedBox(width: 16),
  //       MemberCard(
  //         item: GridItem(
  //             title: '团队等级',
  //             iconPath: UIAssets.source!.member,
  //             id: "teamsLevel",
  //             onClick: (value) {},
  //             isNeedReal: true), // 文本
  //         gradientColors: const [Color(0xFF263335), Color(0xFF15191A)], // 渐变背景
  //         textColor: const Color(0xFFEFEFCC), // 文本颜色（类似淡黄色）
  //         iconColor: const Color(0xFFEFEFCC), // 图标颜色
  //       ),
  //     ],
  //   );
  // }
  //
  // ///股权中心
  // Widget _buildEquityCenter(BuildContext context) {
  //   return EquityCenter(
  //       item: GridItem(
  //           title: '股权中心',
  //           iconPath: UIAssets.source!.gq,
  //           id: "equityCenter",
  //           onClick: (value) {},
  //           isNeedReal: true));
  // }
  //
  // ///余额宝
  // Widget _buildUserBusinessCard(BuildContext context) {
  //   List<GridItem> business = [
  //     GridItem(
  //         title: "充值",
  //         iconPath: UIAssets.source!.cz,
  //         id: "recharge",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "提现",
  //         iconPath: UIAssets.source!.tx,
  //         id: "withdraw",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "转账",
  //         iconPath: UIAssets.source!.tx,
  //         id: "transfer",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //     GridItem(
  //         title: "余额宝",
  //         iconPath: UIAssets.source!.ye,
  //         id: "balance",
  //         onClick: (value) {},
  //         isNeedReal: true),
  //   ];
  //   return BusinessCard(
  //     items: business,
  //   );
  // }
}
