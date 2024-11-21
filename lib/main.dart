// import 'package:commontl/base/utils/orientation_utils.dart';
// import 'package:commontl/base/utils/screen_utils.dart';
import 'package:churn/config/app_config.dart';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_utils/dk_lib.dart' as utils;
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  if (!utils.PlatformUtils.isWeb) {
    WidgetsFlutterBinding.ensureInitialized();

    ///设置客户端
    Future.wait([
      //设置竖屏
      OrientationUtils.setPortrait(),
      //设置顶部透明
      Future(() => ScreenUtil.ensureScreenSize()),
      Future(() => FlutterDownloader.initialize(
          debug: true,
          // optional: set to false to disable printing logs to console (default: true)
          ignoreSsl:
              true // option: set to false to disable working with http links (default: false)
          ))
    ]);
  }
  MediaKit.ensureInitialized();

  AppConfig.instance;
  AppConfig.instance!.initConfig();
  runApp(const ProviderScope(child: App()));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = GoRouter(
      redirect: (BuildContext context, GoRouterState state) {
        Logger.write(
            " ------matchedLocation is ------- ${state.matchedLocation}");
        final bool signIned = LoginInfo.instance!.appToken.isEmpty != true;
        String currentPathName = getFirstPathPart(state.matchedLocation);
        if (!signIned) {
          // return PagePath.signInPage.routerPath();
          if (AppConfig.instance!.isLaunchInit) {
            return null;
            // if (currentPathName != PagePath.signInPage) {
            //   return null;
            // }
          } else {
            return PagePath.launchPage.routerPath();
          }
        }
        if (signIned) {
          if (AppConfig.instance!.isLaunchInit) {
            if (currentPathName != '/') {
              return null;
            }
            return '/';
          } else {
            return PagePath.launchPage.routerPath();
          }
        }
        return null;
      },
      routes: [
        ...registerRouters(),
      ],
    );

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            routeInformationProvider: appRouter.routeInformationProvider,
            routeInformationParser: appRouter.routeInformationParser,
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.routerDelegate,
            title: "H5",
            theme: AppTheme().themeData,
            locale: const Locale("zh", ""),
            builder: EasyLoading.init(),
            supportedLocales: AppLocalizations.supportedLocales,
            // 本地化代理，Flutter 的 Material 和 Cupertino 小部件库国际化支持
            localizationsDelegates: AppLocalizations.localizationsDelegates,
          );
        });
  }
}

// class App extends HookConsumerWidget {
//   const App({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final appRouter = GoRouter(
//       redirect: (BuildContext context, GoRouterState state) {
//         // Logger.write("GoRouter start :${state.matchedLocation}=============");
//         //noticeViewMode.setMainPage(state.subloc=='/.');
//         final bool loggedIn = false; //accessToken.isEmpty ? false : true;
//         // final bool loggingIn = state.subloc == PagePath.signInPage.routerPath();
//         // if (!loggedIn) {
//         //   final routers = noLoginGoRouterPath();
//         //   for (var router in routers) {
//         //     String fullPath = state.fullPath ?? "";
//         //     if (state.fullPath == router.routerPath()) {
//         //       return state.fullPath;
//         //     }
//         //   }
//         //   return "/";
//         // }
//         // if (loggingIn) {
//         //   //Logger.write("GoRouter  :$state");
//         //   return '/';
//         // }
//         return "/";
//       },
//       routes: [
//         ...registerRouters(),
//       ],
//     );
//
//     return ScreenUtilInit(
//         designSize: const Size(750, 1672),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (_, child) {
//           return MaterialApp.router(
//             routeInformationProvider: appRouter.routeInformationProvider,
//             routeInformationParser: appRouter.routeInformationParser,
//             debugShowCheckedModeBanner: false,
//             routerDelegate: appRouter.routerDelegate,
//             title: "创辉",
//             theme: AppTheme().themeData,
//             locale: const Locale("zh", ""),
//             builder: EasyLoading.init(),
//             supportedLocales: AppLocalizations.supportedLocales,
//             // 本地化代理，Flutter 的 Material 和 Cupertino 小部件库国际化支持
//             localizationsDelegates: AppLocalizations.localizationsDelegates,
//           );
//         });
//   }
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }
//
//   Future<void> initPlatformState() async {
//     if (!mounted) return;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     ScreenUtils.init(context);
//     return AppCore().myApp();
//   }
// }
