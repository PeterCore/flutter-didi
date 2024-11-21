import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/member_ship_level.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../../../../router_config.dart';
import 'member_ship_level_card.dart';

///会员等级
class MemberShipLevelWidget extends StatefulWidget {
  const MemberShipLevelWidget({super.key});

  @override
  State<MemberShipLevelWidget> createState() => _MemberShipLevelWidgetState();
}

class _MemberShipLevelWidgetState extends State<MemberShipLevelWidget> {
  MemberShipLevel? memberShipLevel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      getMemberLevel().then((value) {
        EasyLoading.dismiss();
        value.ifSuccess((data) {
          memberShipLevel = data;
          if (mounted) {
            setState(() {});
          }
        });
        value.ifFailure((e) {});
      });
    });
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
                    aspectRatio: 670 / 371,
                    child: Container(
                      // Adjust to push container down for crown
                      padding: EdgeInsets.only(top: 16.h, left: 12.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                          image: AssetImage(UIAssets
                              .source!.icmrt), // Replace with your image path
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
                                  Color(0xFFFBF9F3),
                                  Color(0xFFF7C3AA),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.srcIn,
                            child: Text(
                              memberShipLevel?.level ?? "", // Gradient text
                              style: TextStyle(
                                fontSize: 24.sp,
                                height: 1.3,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "你已累计投资",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    height: 1.2,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "${memberShipLevel?.buymoney ?? 0} USDT",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFCC90),
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "距离升级还需投资 ",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.6),
                                    height: 1.2,
                                  ),
                                ),
                                TextSpan(
                                  text: "${memberShipLevel?.touzi ?? 0} USDT",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.8),
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "直推一级有效人数 ",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.6),
                                    height: 1.2,
                                  ),
                                ),
                                TextSpan(
                                  text: "${memberShipLevel?.number ?? 0} 人",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.8),
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              GradientButton(
                                textColor: const Color(0xFF1F1412),
                                gradientColors: const [
                                  Color(0xFFFBF6EF),
                                  Color(0xFFF9D7C5)
                                ],
                                vertical: 6.h,
                                horizontal: 12.w,
                                text: "规则说明",
                                onPressed: (index) {
                                  WmmDialog.showWMMDialog(context,
                                      title: "说明",
                                      content:
                                          memberShipLevel?.vipshuoming ?? "");
                                },
                              ),
                              SizedBox(width: 4.w),
                              GradientButton(
                                text: "投资统计",
                                gradientColors: const [
                                  Color(0xFFFBF6EF),
                                  Color(0xFFF9D7C5)
                                ],
                                vertical: 6.h,
                                horizontal: 12.w,
                                textColor: const Color(0xFF1F1412),
                                onPressed: (index) {
                                  pushPage(context,
                                      path: PagePath.accountDetailPage);
                                },
                              ),
                              SizedBox(width: 4.w),

                              GradientButton(
                                text: "推广记录",
                                gradientColors: const [
                                  Color(0xFFFBF6EF),
                                  Color(0xFFF9D7C5)
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
                        .mhg, // Replace with the actual crown image asset
                    height: 120.h,
                    width: 110.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27.h,
            ),
            AppLocalImage(
              path: UIAssets.source!.mcbg,
              width: 156.w,
              height: 25.h,
            ),
            if (memberShipLevel != null) ..._buildTasksCard(memberShipLevel!),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTasksCard(MemberShipLevel level) {
    final box = SizedBox(height: 12.h);
    List<Widget> list = [];
    final cards = level.list ?? [];
    for (var cardItem in cards) {
      final cardWidget = MemberShipLevelCard(
        memberShipLevel: level,
        config: level.config,
        item: cardItem,
      );
      list.add(box);
      list.add(cardWidget);
    }
    return list;
  }
}
