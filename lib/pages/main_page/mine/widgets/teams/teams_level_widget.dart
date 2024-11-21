import 'package:churn/pages/main_page/mine/widgets/teams/teams_info_card_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/team_level_result.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../../../../router_config.dart';

class TeamsLevelWidget extends StatefulWidget {
  const TeamsLevelWidget({super.key});

  @override
  State<TeamsLevelWidget> createState() => _TeamsLevelWidgetState();
}

class _TeamsLevelWidgetState extends State<TeamsLevelWidget> {
  final UserInfoViewModel userInfoViewModel =
      serviceLocator<UserInfoViewModel>();
  TeamLevelResult? teamInfo;
  List<TeamsCardInfo> tInfos = [];
  String? curLevelName;
  void _initConfigData() {
    TeamsCardInfo info1 = TeamsCardInfo(
        title: "一级投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");

    TeamsCardInfo info2 = TeamsCardInfo(
        title: "二级投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info3 = TeamsCardInfo(
        title: "三级投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info4 = TeamsCardInfo(
        title: "四级投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info5 = TeamsCardInfo(
        title: "五级投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info6 = TeamsCardInfo(
        title: "五级内总投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info7 = TeamsCardInfo(
        title: "五级内总投资金额",
        upgradeRequirement: "升级要求(USDT)",
        upgradeDistance: "升级差距(USDT)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info8 = TeamsCardInfo(
        title: "团队总投资人数",
        upgradeRequirement: "升级要求(人)",
        upgradeDistance: "升级差距(人)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");
    TeamsCardInfo info9 = TeamsCardInfo(
        title: "团队总投资金额",
        upgradeRequirement: "升级要求(USDT)",
        upgradeDistance: "升级差距(USDT)",
        currentTotal: "当前统计：",
        value1: "",
        value2: "",
        currentValue: "");

    tInfos.add(info1);
    tInfos.add(info2);
    tInfos.add(info3);
    tInfos.add(info4);
    tInfos.add(info5);
    tInfos.add(info6);
    tInfos.add(info7);
    tInfos.add(info8);
    tInfos.add(info9);
  }

  void configData() {
    if (teamInfo != null) {
      final nextLevel = teamInfo?.nextlevel;
      final curLevel = teamInfo?.currentlevel;
      if (nextLevel != null && curLevel != null) {
        String upgradeReq_1 = "${nextLevel.onezrs ?? 0}";
        String upgradeDis_1 =
            (curLevel.onetzrs ?? 0) - (nextLevel.onezrs ?? 0) >= 0
                ? "已达标"
                : "${(nextLevel.onezrs ?? 0) - (curLevel.onetzrs ?? 0)}";
        String currentTotal_1 = "${curLevel.onetzrs ?? 0}";
        tInfos[0].currentValue = currentTotal_1;
        tInfos[0].value1 = upgradeReq_1;
        tInfos[0].value2 = upgradeDis_1;

        String upgradeReq_2 = "${nextLevel.twouzrs ?? 0}";
        String upgradeDis_2 =
            (curLevel.twozrs ?? 0) - (nextLevel.twouzrs ?? 0) >= 0
                ? "已达标"
                : "${(nextLevel.twouzrs ?? 0) - (curLevel.twozrs ?? 0)}";
        String currentTotal_2 = "${curLevel.twozrs ?? 0}";
        tInfos[1].currentValue = currentTotal_2;
        tInfos[1].value1 = upgradeReq_2;
        tInfos[1].value2 = upgradeDis_2;

        String upgradeReq_3 = "${nextLevel.threezrs ?? 0}";
        String upgradeDis_3 =
            (curLevel.threezrs ?? 0) - (nextLevel.threezrs ?? 0) >= 0
                ? "已达标"
                : "${(nextLevel.threezrs ?? 0) - (curLevel.threezrs ?? 0)}";
        String currentTotal_3 = "${curLevel.threezrs ?? 0}";
        tInfos[2].currentValue = currentTotal_3;
        tInfos[2].value1 = upgradeReq_3;
        tInfos[2].value2 = upgradeDis_3;

        String upgradeReq_4 = "${nextLevel.fourzrs ?? 0}";
        String upgradeDis_4 =
            (curLevel.fourzrs ?? 0) - (nextLevel.fourzrs ?? 0) >= 0
                ? "已达标"
                : "${(nextLevel.fourzrs ?? 0) - (curLevel.fourzrs ?? 0)}";
        String currentTotal_4 = "${curLevel.fourzrs ?? 0}";
        tInfos[3].currentValue = currentTotal_4;
        tInfos[3].value1 = upgradeReq_4;
        tInfos[3].value2 = upgradeDis_4;

        String upgradeReq_5 = "${nextLevel.fivezrs ?? 0}";
        String upgradeDis_5 =
            (curLevel.fivezrs ?? 0) - (nextLevel.fivezrs ?? 0) >= 0
                ? "已达标"
                : "${(nextLevel.fivezrs ?? 0) - (curLevel.fivezrs ?? 0)}";
        String currentTotal_5 = "${curLevel.fivezrs ?? 0}";
        tInfos[4].currentValue = currentTotal_5;
        tInfos[4].value1 = upgradeReq_5;
        tInfos[4].value2 = upgradeDis_5;

        String upgradeReq_6 = "${nextLevel.totltzrs ?? 0}";
        String upgradeDis_6 =
            (curLevel.totltzrs ?? 0) - (nextLevel.totltzrs ?? 0) >= 0
                ? "已达标"
                : "${(nextLevel.totltzrs ?? 0) - (curLevel.totltzrs ?? 0)}";
        String currentTotal_6 = "${curLevel.totltzrs ?? 0}";
        tInfos[5].currentValue = currentTotal_6;
        tInfos[5].value1 = upgradeReq_6;
        tInfos[5].value2 = upgradeDis_6;

        String upgradeReq_7 = "${nextLevel.totlttzmoeny ?? 0}";
        String upgradeDis_7 = double.parse(curLevel.totlttzmoeny ?? "0") -
                    (nextLevel.totlttzmoeny ?? 0) >=
                0
            ? "已达标"
            : "${(nextLevel.totlttzmoeny ?? 0) - double.parse(curLevel.totlttzmoeny ?? "0")}";
        String currentTotal_7 = "${curLevel.totltzrs ?? 0}";
        tInfos[6].currentValue = currentTotal_7;
        tInfos[6].value1 = upgradeReq_7;
        tInfos[6].value2 = upgradeDis_7;

        String upgradeReq_8 = "${nextLevel.teamstotleren ?? 0}";
        String upgradeDis_8 = (curLevel.teamstotleren ?? 0) -
                    (nextLevel.teamstotleren ?? 0) >=
                0
            ? "已达标"
            : "${(nextLevel.teamstotleren ?? 0) - (curLevel.teamstotleren ?? 0)}";
        String currentTotal_8 = "${curLevel.teamstotleren ?? 0}";
        tInfos[7].currentValue = currentTotal_8;
        tInfos[7].value1 = upgradeReq_8;
        tInfos[7].value2 = upgradeDis_8;

        String upgradeReq_9 = "${nextLevel.teamsmoney ?? 0}";
        String upgradeDis_9 = double.parse(curLevel.teamsmoney ?? "0") -
                    (nextLevel.teamsmoney ?? 0) >=
                0
            ? "已达标"
            : "${(nextLevel.teamsmoney ?? 0) - double.parse(curLevel.teamsmoney ?? "0")}";
        String currentTotal_9 = "${curLevel.teamsmoney ?? 0}";
        tInfos[8].currentValue = currentTotal_9;
        tInfos[8].value1 = upgradeReq_9;
        tInfos[8].value2 = upgradeDis_9;
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _initConfigData();
    EasyLoading.show();
    getMemberLevels().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        teamInfo = data;
        curLevelName = teamInfo?.currentlevel?.agentname ?? '';
        if (mounted) {
          setState(() {
            configData();
          });
        }
      });
      value.ifFailure((e) {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 48.h),
                  child: AspectRatio(
                    aspectRatio: 353 / 164,
                    child: Container(
                      // Adjust to push container down for crown
                      padding:
                          EdgeInsets.only(top: 16.h, left: 12.w, bottom: 16.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                          image: AssetImage(UIAssets
                              .source!.tsbg), // Replace with your image path
                          fit: BoxFit
                              .cover, // Ensures the image covers the container without distortion
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color(0xFFA0DEF9),
                                  Color(0xFFE1FAFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.srcIn,
                            child: Text(
                              curLevelName ?? "成为团长", // Gradient text
                              style: TextStyle(
                                fontSize: 24.sp,
                                height: 1.3,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          GestureDetector(
                            onTap: () {
                              pushPage(context,
                                  path: PagePath.teamsLevelRewardPage);
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "查看各团等级奖励",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      height: 1.2,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ">",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              GradientButton(
                                textColor: const Color(0xFF1F1412),
                                gradientColors: const [
                                  Color(0xFFA0DEF9),
                                  Color(0xFFE1FAFF)
                                ],
                                vertical: 6.h,
                                horizontal: 12.w,
                                text: "规则说明",
                                onPressed: (index) {
                                  WmmDialog.showWMMDialog(context,
                                      title: "说明",
                                      content: userInfoViewModel
                                              .newData?.infolist?[10] ??
                                          "");
                                },
                              ),

                              SizedBox(width: 4.w),

                              GradientButton(
                                text: "推广记录",
                                gradientColors: const [
                                  Color(0xFFA0DEF9),
                                  Color(0xFFE1FAFF)
                                ],
                                vertical: 6.h,
                                horizontal: 12.w,
                                textColor: const Color(0xFF1F1412),
                                onPressed: (index) {
                                  pushPage(context,
                                      path: PagePath.promotionRecordPage);
                                },
                              ),
                              // _buildButton('规则说明'),
                              // _buildButton('投资统计'),
                              // _buildButton('推广记录'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Crown image overflow
                Positioned(
                  top: 0,
                  right: 16,
                  child: Image.asset(
                    UIAssets.source!
                        .tmember, // Replace with the actual crown image asset
                    height: 120.h,
                    width: 110.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '提示：如果各项数据都显示已达标，等级却没更新，请点击“推广记录”即可更新等级状态',
                      style: TextStyle(
                          color: AppTheme().wordSecondColor,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp)),
                  TextSpan(
                      text: '“推广记录”',
                      style: TextStyle(
                          color: const Color(0xFFFF9F10),
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp)),
                  TextSpan(
                      text: '即可更新等级状态',
                      style: TextStyle(
                          color: AppTheme().wordSecondColor,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp)),
                ]),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            AppLocalImage(
              path: UIAssets.source!.icjjj,
              width: 156.w,
              height: 25.h,
            ),
            SizedBox(
              height: 16.h,
            ),
            RoundContainer(
              backgroundColor: const Color(0xFFD2CFDB),
              vertical: 12.h,
              child: Column(
                children: [
                  if (teamInfo?.config?.teamsOners == 1)
                    TeamsInfoCardWidget(info: tInfos[0]),
                  if (teamInfo?.config?.teamsTwouzrs == 1)
                    TeamsInfoCardWidget(info: tInfos[1]),
                  if (teamInfo?.config?.teamsThreezrs == 1)
                    TeamsInfoCardWidget(info: tInfos[2]),
                  if (teamInfo?.config?.teamsFourzrs == 1)
                    TeamsInfoCardWidget(info: tInfos[3]),
                  if (teamInfo?.config?.teamsFivezrs == 1)
                    TeamsInfoCardWidget(info: tInfos[4]),
                  if (teamInfo?.config?.teamsTotltzrs == 1)
                    TeamsInfoCardWidget(info: tInfos[5]),
                  if (teamInfo?.config?.teamsTotlttzmoeny == 1)
                    TeamsInfoCardWidget(info: tInfos[6]),
                  if (teamInfo?.config?.teamsTeamstotleren == 1)
                    TeamsInfoCardWidget(info: tInfos[7]),
                  if (teamInfo?.config?.teamsTeamsmoney == 1)
                    TeamsInfoCardWidget(info: tInfos[8]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
