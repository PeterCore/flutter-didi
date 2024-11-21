import 'package:churn/l10n/l10n.dart';
import 'package:churn/pages/main_page/product/pages/product_page.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../assets_tool/ui_assets.dart';
import '../../router_config.dart';
import 'home/pages/home_page.dart';
import 'market/pages/market_page.dart';
import 'mine/pages/user_profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final PageController pageController = PageController();
  int currentPage = 0;
  final UserInfoViewModel userInfoViewModel =
      serviceLocator<UserInfoViewModel>();

  // late TabController tabController;

  @override
  void dispose() {
    // tabController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      LoginInfo.instance!.onListenLogOut = () {
        if (mounted) {
          showCustomDialog(
            context: context,
            title: '温馨提示',
            content: '登录已过期，请重新登录',
            // onCancel: () {
            //   Navigator.of(context).pop();
            // },
            onConfirm: () {
              // 确定按钮的处理逻辑
              LoginInfo.instance!.clearToken().then((_) {
                Navigator.of(context).pop();
                Future.delayed(const Duration(milliseconds: 300)).then((_) {
                  popPage(context, path: PagePath.signInPage);
                });
              });
            },
          );
          // Future.delayed(const Duration(seconds: 1)).then((_) {
          //   popPage(context, path: PagePath.signInPage);
          // });
          // // utils.EasyLoading.showError("token失效");
          // // Future.delayed(const Duration(milliseconds: 300)).then((_) {
          // //   bool isPop = popPage(context, path: PagePath.signInPage);
          // //   if (!isPop) {
          // //     replacePage(context, path: PagePath.signInPage);
          // //   }
          // // });
        }
      };
    });

    // // tabController = TabController(length: 4, vsync: this);
    // // tabController.addListener(
    // //   () {
    //     final value = tabController.animation!.value.round();
    //     if (value != currentPage && mounted) {
    //       if (value == 2 || value == 1) {
    //         bool isReal = userInfoViewModel.data?.isreal == 1;
    //         if (isReal) {
    //           changePage(value);
    //         } else {
    //           showCustomDialog(
    //             context: context,
    //             title: '提示',
    //             content: '请先进行实名认证',
    //             onConfirm: () {
    //               Navigator.of(context).pop();
    //               // 确定按钮的处理逻辑
    //               Future.delayed(const Duration(milliseconds: 500))
    //                   .then((value) {
    //                 pushPage(context, path: PagePath.kycUserPage);
    //               });
    //             },
    //           );
    //           tabController.index = currentPage;
    //         }
    //       } else {
    //         changePage(value);
    //       }
    //     }
    //   },
    // );
    userInfoViewModel.fetchUserInfo();
    userInfoViewModel.fetchNewUserInfo();
    getMemberLevel();
    super.initState();
  }

  selectedTabBarIndex(int index) {
    //设置索引
    if (index != currentPage && mounted) {
      if (index == 3 || index == 1) {
        bool isReal = userInfoViewModel.data?.isreal == 1;
        if (isReal) {
          if (currentPage != index) {
            currentPage = index;
            setState(() {});
            pageController.jumpToPage(index);
          }
        } else {
          showCustomDialog(
            context: context,
            title: '提示',
            content: '请先进行实名认证',
            onConfirm: () {
              Navigator.of(context).pop();
              // 确定按钮的处理逻辑
              Future.delayed(const Duration(milliseconds: 500)).then((value) {
                pushPage(context, path: PagePath.kycUserPage);
              });
            },
          );
        }
      } else {
        if (currentPage != index) {
          currentPage = index;
          setState(() {});
          pageController.jumpToPage(index);
        }
      }
    }
  }

  List<BottomNavigationBarItem> tabBarList(BuildContext context) {
    List<BottomNavigationBarItem> _tabBarlist = [];
    BottomNavigationBarItem homeItem = BottomNavigationBarItem(
      activeIcon: Image.asset(
        UIAssets.source!.ictbhs,
        width: 22.w,
        height: 22.w,
      ),
      icon: Image.asset(
        UIAssets.source!.ictbhu,
        width: 22.w,
        height: 22.w,
      ),
      label: context.l10n?.home ?? "",
      tooltip: '',
    );
    BottomNavigationBarItem marketItem = BottomNavigationBarItem(
      activeIcon: Image.asset(
        UIAssets.source!.ictbls,
        width: 22.w,
        height: 22.w,
      ),
      icon: Image.asset(
        UIAssets.source!.ictblu,
        width: 22.w,
        height: 22.w,
      ),
      label: "项目",
      tooltip: '',
    );
    BottomNavigationBarItem productItem = BottomNavigationBarItem(
      activeIcon: Image.asset(
        UIAssets.source!.ictbps,
        width: 22.w,
        height: 22.w,
      ),
      icon: Image.asset(
        UIAssets.source!.ictbpu,
        width: 22.w,
        height: 22.w,
      ),
      label: "社区",
      tooltip: '',
    );
    BottomNavigationBarItem serviceItem = BottomNavigationBarItem(
      activeIcon: Image.asset(
        UIAssets.source!.ictbss,
        width: 22.w,
        height: 22.w,
      ),
      icon: Image.asset(
        UIAssets.source!.ictbsu,
        width: 22.w,
        height: 22.w,
      ),
      label: "客服",
    );
    BottomNavigationBarItem userProfileItem = BottomNavigationBarItem(
      activeIcon: Image.asset(
        UIAssets.source!.ictbfs,
        width: 22.w,
        height: 22.w,
      ),
      icon: Image.asset(
        UIAssets.source!.ictbfu,
        width: 22.w,
        height: 22.w,
      ),
      label: context.l10n?.userProfile ?? "",
    );
    _tabBarlist.add(homeItem);
    _tabBarlist.add(marketItem);
    _tabBarlist.add(productItem);
    _tabBarlist.add(serviceItem);
    _tabBarlist.add(userProfileItem);
    return _tabBarlist;
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final UserInfoViewModel userInfoViewModel =
        serviceLocator<UserInfoViewModel>();
    return PopScope(
        // onWillPop: () => logic.exitVerify(),
        canPop: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              HomePage(),
              ProductPage(),
              MarketPage(),
              ProductPage(),
              UserProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (index) {
              selectedTabBarIndex(index);
            },
            type: BottomNavigationBarType.fixed, // 固定模式
            backgroundColor: Colors.white,
            selectedItemColor: AppTheme().wordPrimaryColor, // 选中的图标和文字颜色
            unselectedItemColor: const Color(0xFFBCBCBC), // 未
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.red,
                fontSize: 10.sp),
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.red, //const Color(0xFFBCBCBC),
                fontSize: 10.sp),
            items: tabBarList(context),
          ),
        ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   final UserInfoViewModel userInfoViewModel =
  //       serviceLocator<UserInfoViewModel>();
  //   return PopScope(
  //       // onWillPop: () => logic.exitVerify(),
  //       canPop: false,
  //       child: Scaffold(
  //           resizeToAvoidBottomInset: false,
  //           backgroundColor: Colors.white,
  //           body: BottomBar(
  //             clip: Clip.none,
  //             fit: StackFit.expand,
  //             borderRadius: BorderRadius.circular(500),
  //             duration: const Duration(milliseconds: 500),
  //             curve: Curves.decelerate,
  //             showIcon: true,
  //             width: MediaQuery.of(context).size.width * 0.8,
  //             barColor: Colors.white,
  //             start: 0,
  //             end: 0,
  //             offset: 10,
  //             barAlignment: Alignment.bottomCenter,
  //             iconHeight: 22.w,
  //             iconWidth: 22.w,
  //             reverse: false,
  //             hideOnScroll: true,
  //             scrollOpposite: false,
  //             onBottomBarHidden: () {},
  //             onBottomBarShown: () {},
  //             body: (context, controller) => TabBarView(
  //               controller: tabController,
  //               dragStartBehavior: DragStartBehavior.down,
  //               physics: const NeverScrollableScrollPhysics(),
  //               children: const [
  //                 HomePage(),
  //                 MarketPage(),
  //                 ProductPage(),
  //                 ProductPage(),
  //                 UserProfilePage(),
  //               ],
  //             ),
  //             child: Stack(
  //               alignment: Alignment.center,
  //               clipBehavior: Clip.none,
  //               children: [
  //                 TabBar(
  //                   dividerColor: Colors.transparent,
  //                   overlayColor: WidgetStateProperty.all(Colors.transparent),
  //                   indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
  //                   controller: tabController,
  //                   indicatorColor: Colors.transparent,
  //                   tabs: [
  //                     SizedBox(
  //                       height: 40.w,
  //                       width: 40.w,
  //                       child: Center(
  //                           child: AppLocalImage(
  //                         width: 24.w,
  //                         height: 24.w,
  //                         path: currentPage == 0
  //                             ? UIAssets.source!.ictbhs
  //                             : UIAssets.source!.ictbhu,
  //                       )),
  //                     ),
  //                     SizedBox(
  //                       height: 40.w,
  //                       width: 40.w,
  //                       child: Center(
  //                           child: AppLocalImage(
  //                         width: 24.w,
  //                         height: 24.w,
  //                         path: currentPage == 1
  //                             ? UIAssets.source!.ictbls
  //                             : UIAssets.source!.ictblu,
  //                       )),
  //                     ),
  //                     SizedBox(
  //                       height: 40.w,
  //                       width: 40.w,
  //                       child: Center(
  //                           child: AppLocalImage(
  //                         width: 24.w,
  //                         height: 24.w,
  //                         path: currentPage == 2
  //                             ? UIAssets.source!.ictbps
  //                             : UIAssets.source!.ictbpu,
  //                       )),
  //                     ),
  //                     SizedBox(
  //                       height: 40.w,
  //                       width: 40.w,
  //                       child: Center(
  //                           child: AppLocalImage(
  //                         width: 24.w,
  //                         height: 24.w,
  //                         path: currentPage == 3
  //                             ? UIAssets.source!.ictbss
  //                             : UIAssets.source!.ictbsu,
  //                       )),
  //                     ),
  //                     SizedBox(
  //                       height: 40.w,
  //                       width: 40.w,
  //                       child: Center(
  //                           child: AppLocalImage(
  //                         width: 24.w,
  //                         height: 24.w,
  //                         path: currentPage == 4
  //                             ? UIAssets.source!.ictbfs
  //                             : UIAssets.source!.ictbfu,
  //                       )),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           )));
  // }
}
