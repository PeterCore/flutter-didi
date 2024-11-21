import 'package:churn/assets_tool/ui_assets.dart';
import 'package:common_utils/common_utils.dart';
import 'package:dk_net_work/models/home_result_model.dart';
import 'package:dk_net_work/models/new_list_result_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../../components/app_real_name_auth_container.dart';
import '../../../../router_config.dart';
import '../../../../vendor/scroll/marquee.dart';
import '../logic/home_manager.dart';
import 'news_cell.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeResultModel? homeInfo;
  NewListResultModel? newsModel;
  late final player = Player();
  late final controller = VideoController(player);
  static Future<List<dynamic>> allMsg(Iterable<Future> list) async {
    return await Future.wait(list);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      HomeManager.fetchHomeMsg(onSuccess: (res) {
        homeInfo = res;
        if (mounted) {
          if (!TextUtil.isEmpty(homeInfo?.videourl)) {
            player.open(Media(homeInfo?.videourl ?? ""));
          }
          setState(() {});
        }
      });
      HomeManager.fetchNewListMsg(onSuccess: (news) {
        newsModel = news;
        if (mounted) {
          setState(() {});
        }
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return homeInfo == null
  //       ? Container()
  //       : Padding(
  //           padding: EdgeInsets.symmetric(horizontal: 20.w),
  //           child: NestedScrollView(
  //             headerSliverBuilder: (context, innerBoxIsScrolled) => [
  //               // SliverAppBar with Header and TabBar
  //               SliverToBoxAdapter(
  //                 child: Column(
  //                   children: [
  //                     _buildBanners(),
  //                     SizedBox(
  //                       height: 10.h,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SliverToBoxAdapter(
  //                   child: Column(
  //                 children: [
  //                   _buildAdv(),
  //                   SizedBox(
  //                     height: 10.h,
  //                   ),
  //                 ],
  //               )),
  //               SliverToBoxAdapter(
  //                   child: Column(
  //                 children: [
  //                   _introduceCompany(),
  //                   SizedBox(
  //                     height: 10.h,
  //                   ),
  //                 ],
  //               )),
  //               SliverToBoxAdapter(
  //                   child: Column(
  //                 children: [
  //                   _buildLanMu(),
  //                   SizedBox(
  //                     height: 10.h,
  //                   ),
  //                 ],
  //               )),
  //               SliverToBoxAdapter(
  //                   child: Column(
  //                 children: [
  //                   _buildVideoWidget(),
  //                   SizedBox(
  //                     height: 20.h,
  //                   ),
  //                 ],
  //               )),
  //             ],
  //             body: ListView.builder(
  //               itemCount: newsModel?.data?.length ?? 0,
  //               itemBuilder: (context, index) {
  //                 final news = newsModel?.data ?? [];
  //                 final item = news[index];
  //                 return NewsCell(
  //                   model: item,
  //                 );
  //               },
  //             ),
  //           ),
  //         );
  // }

  @override
  Widget build(BuildContext context) {
    return homeInfo == null
        ? Container()
        : SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 375),
                      childAnimationBuilder: (widget) => ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(child: widget),
                          ),
                      children: [
                        _buildBanners(),
                        SizedBox(
                          height: 10.h,
                        ),
                        _buildAdv(),
                        SizedBox(
                          height: 10.h,
                        ),
                        _introduceCompany(),
                        SizedBox(
                          height: 10.h,
                        ),
                        _buildLanMu(),
                        SizedBox(
                          height: 10.h,
                        ),
                        _buildVideoWidget(),
                        SizedBox(
                          height: 20.h,
                        ),

                        // _buildBanner(),
                        ..._buildNewsList()
                      ]),
                ),
              ),
            ),
          );
  }

  Widget _buildBanners() {
    if (homeInfo?.banner != null && homeInfo!.banner!.isNotEmpty) {
      final banners = homeInfo?.banner;
      int id = 0;
      List<BannerModel> listBanners = banners!.map((e) {
        id++;
        return BannerModel(imagePath: e.thumbUrl ?? "", id: "$id");
      }).toList();
      return Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Card(
          clipBehavior: Clip.antiAlias,
          color: AppTheme().roundContainerColor,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: BannerCarousel(
            margin: const EdgeInsets.symmetric(horizontal: 0.0),
            banners: listBanners,
            customizedIndicators: const IndicatorModel.animation(
                width: 10, height: 10, spaceBetween: 2, widthAnimation: 50),
            height: (MediaQuery.of(context).size.width - 40.w) * (9 / 16),
            width: (MediaQuery.of(context).size.width - 40.w),
            activeColor: Colors.white.withOpacity(0.5),
            disableColor: Colors.white.withOpacity(0.5),
            animation: true,
            borderRadius: 0,
            indicatorBottom: false,
          ),
        ),
      );
    } else {
      return Container(
        height: 10,
      );
    }
  }

  Widget _buildVideoWidget() {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      shadowColor: Colors.transparent,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Video(
                  controller: controller,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdv() {
    if (TextUtil.isEmpty(homeInfo?.gonggao?.title) == false) {
      return GestureDetector(
        onTap: () {
          AnnouncementDialog.showADialog(context,
              content: homeInfo?.gonggao?.ccontent ?? "", isHtml: true);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          color: AppTheme().roundContainerColor,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          child: SizedBox(
            height: 50.h,
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                AppLocalImage(
                  path: UIAssets.source!.mph,
                  width: 24.w,
                  height: 24.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Flexible(
                    child: SizedBox(
                  height: 15.h,
                  child: Marquee(
                    text: homeInfo?.gonggao?.title ?? "",
                    style: AppStyle()
                        .bodyRegular_25(color: AppTheme().wordPrimaryColor),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: MediaQuery.of(context).size.width -
                        12.w -
                        8 * 4.w -
                        28.w -
                        5.w,
                    velocity: 20.0,
                    startPadding: 10.w,
                    accelerationCurve: Curves.linear,
                    decelerationCurve: Curves.easeOut,
                  ),
                )),
                SizedBox(
                  width: 40.w,
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Container();
  }

  Widget _buildLanMu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppRealNameAuthContainer(
          isNeedRealName: true,
          onClick: (value) {
            pushPage(context, path: PagePath.teamsLevelPage);
          },
          child: AppLocalImage(
            path: UIAssets.source!.icts,
            width: 77.w,
            height: 84.h,
          ),
        ),
        AppRealNameAuthContainer(
          isNeedRealName: true,
          onClick: (value) {
            pushPage(context, path: PagePath.transferPage);
          },
          child: AppLocalImage(
            path: UIAssets.source!.icuex,
            width: 77.w,
            height: 84.h,
          ),
        ),
        AppLocalImage(
          onTap: () {
            pushPage(context, path: PagePath.inviteFriendPage);
          },
          path: UIAssets.source!.icIf,
          width: 77.w,
          height: 84.h,
        ),
        AppLocalImage(
          onTap: () {
            pushPage(context, path: PagePath.lotteryPage);
          },
          path: UIAssets.source!.icky,
          width: 77.w,
          height: 84.h,
        ),
      ],
    );
  }

  Widget _introduceCompany() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            height: 60.h,
            child: GestureDetector(
              onTap: () {
                pushPage(context, path: PagePath.companyProfilePage);
              },
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "公司简介",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: AppTheme().wordPrimaryColor,
                              height: 1.4),
                        ),
                        const Spacer(),
                        AppLocalImage(
                          path: UIAssets.source!.iccp,
                          height: 32.w,
                          width: 32.w,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
        SizedBox(
          width: 6.w,
        ),
        Expanded(
          child: SizedBox(
            height: 60.h,
            child: GestureDetector(
              onTap: () {
                pushPage(context, path: PagePath.newListPage);
              },
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      children: [
                        Text(
                          "公告中心",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: AppTheme().wordPrimaryColor,
                              height: 1.4),
                        ),
                        Spacer(),
                        AppLocalImage(
                          path: UIAssets.source!.icmpb,
                          height: 32.w,
                          width: 32.w,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildNewsList() {
    List<Widget> cells = [];
    if (newsModel?.data == null || newsModel!.data!.isEmpty) {
      return [Container()];
    } else {
      List<Articlescategory> newList = newsModel!.data!;

      for (var item in newList) {
        cells.add(NewsCell(
          model: item,
        ));
        cells.add(SizedBox(
          height: 12.h,
        ));
      }
      return cells;
    }
  }
}
