import 'package:churn/pages/main_page/mine/widgets/user_profile/w_card.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../../../../components/zk_modify_pay_pwd_dialog.dart';
import '../../../../../components/zk_modify_sign_in_pwd_dialog.dart';
import '../../../../../router_config.dart';
import '../../models/grid_item.dart';
import 'business_card.dart';
import 'equity_center.dart';
import 'grid_function_view.dart';
import 'member_card.dart';

class ProfileWidgetBuilder {
  static Widget buildCommon(BuildContext context) {
    List<GridItem> gridItemF = [
      GridItem(
          title: "账号详情",
          iconPath: UIAssets.source!.zhxq,
          id: "accountDetail",
          onClick: (value) {
            pushPage(context, path: PagePath.accountDetailPage);
          },
          isNeedReal: true),
      GridItem(
          title: "交易明细",
          iconPath: UIAssets.source!.jm,
          id: "accountDetail",
          onClick: (value) {
            pushPage(context, path: PagePath.transactionDetailPage);
          },
          isNeedReal: true),
      GridItem(
          title: "计算器",
          iconPath: UIAssets.source!.js,
          id: "computer",
          onClick: (value) {
            pushPage(context, path: PagePath.calculatorPage);
          },
          isNeedReal: true),
      GridItem(
          title: "投资制度",
          iconPath: UIAssets.source!.tzl,
          id: "invest",
          onClick: (value) {
            pushPage(context, path: PagePath.investRegimePage);
          },
          isNeedReal: true),
      GridItem(
          title: "邀请好友",
          iconPath: UIAssets.source!.yqhy,
          id: "invite",
          onClick: (value) {
            pushPage(context, path: PagePath.inviteFriendPage);
          },
          isNeedReal: true),
      GridItem(
          title: "推广记录",
          iconPath: UIAssets.source!.tgjl,
          id: "promotion",
          onClick: (value) {
            pushPage(context, path: PagePath.promotionRecordPage);
          },
          isNeedReal: true),
      GridItem(
          title: "拼团记录",
          iconPath: UIAssets.source!.pj,
          id: "lump",
          onClick: (value) {
            pushPage(context, path: PagePath.productGroupRecordsPage);
          },
          isNeedReal: true),
      GridItem(
          title: "无忧易贷",
          iconPath: UIAssets.source!.zhxq,
          id: "wuYou",
          onClick: (value) {
            pushPage(context, path: PagePath.loanPage);
          },
          isNeedReal: true),
    ];
    return GridFunctionView(
      gridList: gridItemF,
      mainTitle: '常用功能',
    );
  }

  ///安全中心
  static Widget buildSecurityCenter(BuildContext context) {
    List<GridItem> gridItemS = [
      GridItem(
          title: "登录密吗",
          iconPath: UIAssets.source!.dm,
          id: "loginPsw",
          onClick: (value) {
            ZkModifySignInPwdDialog.show(context, onClick: (index) {
              if (index == 1) {
                pushPage(context,
                    path: PagePath.modifySignInPwdWithOriginalPwdPage);
              } else {
                pushPage(context, path: PagePath.modifySignInPswPage);
              }
            });
          },
          isNeedReal: true),
      GridItem(
          title: "支付密码",
          iconPath: UIAssets.source!.zhma,
          id: "payPsw",
          onClick: (value) {
            ZkModifyPayPwdDialog.show(context, onClick: (index) {
              if (index == 0) {
                pushPage(context, path: PagePath.modifyPayPwdWithPkPage);
              } else if (index == 1) {
                pushPage(context, path: PagePath.modifyPayPwdPage);
              }
            });
          },
          isNeedReal: true),
      GridItem(
          title: "实名认证",
          iconPath: UIAssets.source!.sm,
          id: "kyc",
          onClick: (value) {
            pushPage(context, path: PagePath.kycUserPage);
          },
          isNeedReal: true),
      GridItem(
          title: "提现管理",
          iconPath: UIAssets.source!.txj,
          id: "withdrawal",
          onClick: (value) {
            pushPage(context, path: PagePath.withdrawsManagerPage);
          },
          isNeedReal: true),
      GridItem(
          title: "收货地址",
          iconPath: UIAssets.source!.sh,
          id: "delivery",
          onClick: (value) {
            pushPage(context, path: PagePath.addressManagerPage, ext: {});
          },
          isNeedReal: true),
      GridItem(
          title: "查看密钥",
          iconPath: UIAssets.source!.cy,
          id: "keys",
          onClick: (value) {
            pushPage(context, path: PagePath.viewPkPage);
          },
          isNeedReal: true),
      GridItem(
          title: "版本更新",
          iconPath: UIAssets.source!.vu,
          id: "updateV",
          onClick: (value) {
            pushPage(context, path: PagePath.versionUpdatePage);
          },
          isNeedReal: false),
      GridItem(
          title: "退出登录",
          iconPath: UIAssets.source!.tcdl,
          id: "logout",
          onClick: (value) {
            showCustomDialog(
              context: context,
              title: '提示',
              content: '确定要退出登录',
              onCancel: () {
                Navigator.of(context).pop();
              },
              onConfirm: () {
                // 确定按钮的处理逻辑
                LoginInfo.instance!.clearToken().then((_) {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 300)).then((_) {
                    popPage(context, path: PagePath.signInPage);
                    // bool isPop = popPage(context, path: PagePath.signInPage);
                    // if (!isPop) {
                    //   replacePage(context, path: PagePath.signInPage);
                    // }
                  });
                });
              },
            );
          },
          isNeedReal: false),
    ];

    return GridFunctionView(
      gridList: gridItemS,
      mainTitle: '安全中心',
    );
  }

  ///抽奖和投资
  static Widget buildW(BuildContext context) {
    return WCard(
        lotteryItem: GridItem(
            title: '幸运\n抽奖',
            iconPath: UIAssets.source!.cj,
            id: "lottery",
            onClick: (value) {
              pushPage(context, path: PagePath.lotteryPage);
            },
            isNeedReal: true),
        investorItem: GridItem(
            title: "我的\n投资",
            iconPath: UIAssets.source!.tz,
            id: "payPsw",
            onClick: (value) {
              pushPage(context, path: PagePath.productNormalRecordsPage);
            },
            isNeedReal: true));
  }

  ///会员等级
  static Widget buildMember(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MemberCard(
          item: GridItem(
              title: '会员等级',
              iconPath: UIAssets.source!.tvip,
              backgroundColor: AppTheme().goldBackgroundColor,
              id: "memberLevel",
              onClick: (value) {
                pushPage(context, path: PagePath.memberShipLevelPage);
              },
              isNeedReal: true),
          gradientColors: const [Color(0xFF3B332B), Color(0xFF11100B)], // 渐变背景
          textColor: Color(0xFFB08957), // 文本颜色（类似金色）
          iconColor: Color(0xFFB08957), // 图标颜色
        ),
        const SizedBox(width: 16),
        MemberCard(
          bgImagePath: UIAssets.source!.tsbg,
          item: GridItem(
              title: '团队等级',
              backgroundColor: AppTheme().blueBackgroundColor,
              iconPath: UIAssets.source!.tmember,
              id: "teamsLevel",
              onClick: (value) {
                pushPage(context, path: PagePath.teamsLevelPage);
              },
              isNeedReal: true), // 文本
          gradientColors: const [Color(0xFF263335), Color(0xFF15191A)], // 渐变背景
          textColor: AppTheme().wordPrimaryColor, // 文本颜色（类似淡黄色）
          iconColor: const Color(0xFFEFEFCC), // 图标颜色
        ),
      ],
    );
  }

  ///股权中心
  static Widget buildEquityCenter(BuildContext context) {
    return EquityCenter(
        item: GridItem(
            title: '股权中心',
            iconPath: UIAssets.source!.gq,
            id: "equityCenter",
            onClick: (value) {},
            isNeedReal: true));
  }

  ///余额宝
  static Widget buildUserBusinessCard(BuildContext context) {
    List<GridItem> business = [
      GridItem(
          title: "充值",
          iconPath: UIAssets.source!.cz,
          id: "recharge",
          onClick: (value) {
            pushPage(context, path: PagePath.onlineRechargePage);
          },
          isNeedReal: true),
      GridItem(
          title: "提现",
          iconPath: UIAssets.source!.tx,
          id: "withdraw",
          onClick: (value) {
            pushPage(context, path: PagePath.withdrawsPage);
          },
          isNeedReal: true),
      GridItem(
          title: "转账",
          iconPath: UIAssets.source!.zz,
          id: "transfer",
          onClick: (value) {
            pushPage(context, path: PagePath.transferPage);
          },
          isNeedReal: true),
      GridItem(
          title: "余额宝",
          iconPath: UIAssets.source!.ye,
          id: "balance",
          onClick: (value) {
            pushPage(context, path: PagePath.yuEBaoPage);
          },
          isNeedReal: true),
    ];
    return BusinessCard(
      items: business,
    );
  }
}
