/// FileName router
///
/// @Author RealOne
/// @Date 2024/9/7 15:18
///
/// @Description TODO
import 'dart:convert';

import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/utils/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum ScreenTransType { normal, fade, popup }

bool popUntilPath(BuildContext context, String routePath) {
  final router = GoRouter.of(context);
  var isPop = false;
  while (
      router.routerDelegate.currentConfiguration.matches.last.matchedLocation !=
          routePath) {
    if (!context.canPop()) {
      return false;
    }
    isPop = true;
    context.pop();
  }
  return isPop;
}

bool isExistPagePath(BuildContext context, {String routePath = '/'}) {
  bool isExist = false;

  try {
    final router = GoRouter.of(context);
    final routers = router.routerDelegate.currentConfiguration.matches;
    for (var routeMatchBase in routers) {
      String currentPathName = "/";
      if (routeMatchBase.matchedLocation != "/") {
        currentPathName = getFirstPathPart(routeMatchBase.matchedLocation);
      }
      if (routePath == currentPathName) {
        isExist = true;
        break;
      }
    }
  } catch (e) {
    Logger.write("${e}");
  }

  return isExist;
}

void popPagePath(BuildContext context, String routePath,
    {String rootPath = '/'}) {
  bool isPopPagePath = isExistPagePath(context, routePath: routePath);
  bool isRootPath = isExistPagePath(context, routePath: rootPath);
  if (isPopPagePath) {
    popUntilPath(context, routePath);
  } else {
    if (isRootPath) {
      if (popUntilPath(context, rootPath) == false) {
        replacePage(context, path: routePath);
      }
    }
  }
}

extension GoRouterExt on GoRouter {
  // void popUntilPath(String routePath) {
  //   List routeStacks = [...routerDelegate.currentConfiguration.routes];
  //
  //   for (int i = routeStacks.length - 1; i >= 0; i--) {
  //     RouteBase route = routeStacks[i];
  //     if (route is GoRoute) {
  //       if (route.name == routePath) break;
  //       if (i != 0 && routeStacks[i - 1] is ShellRoute) {
  //         RouteMatchList matchList = routerDelegate.currentConfiguration;
  //         restore(matchList.remove(matchList.matches.last));
  //       } else {
  //         pop();
  //       }
  //     }
  //   }
  // }
}

extension RouterPath on String {
  String routerPath({bool ext = false}) {
    if (contains('/')) return '/';
    return ext == true ? '/$this/:params' : '/$this';
  }
}

String getFirstPathPart(String path) {
  // 移除开头的斜杠
  path = path.startsWith("/") ? path.substring(1) : path;

  // 使用斜杠分割，获取第一个部分
  return path.split('/')[0];
}

String _configPaths(String path, Map<String, dynamic>? params) {
  String basePath = '/$path';
  if (params != null) {
    String encode = encodeParams(params);
    basePath = '$basePath/$encode';
  }
  return basePath;
}

AppRoute dKRouter(String path, Widget Function(Map<String, dynamic>? s) builder,
    {ScreenTransType transType = ScreenTransType.normal,
    bool ext = false,
    bool resizeToAvoidBottomInset = true}) {
  String pathName = path.routerPath(ext: ext);
  Logger.write("pathName is -----$pathName");
  return AppRoute(path.routerPath(ext: ext),
      transType: transType,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset, (s) {
    final params = parseQueryParams(s.pathParameters['params']);
    return builder(params);
  });
}

class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
      {List<GoRoute> routes = const [],
      this.transType = ScreenTransType.normal,
      bool resizeToAvoidBottomInset = true})
      : super(
          path: path,
          routes: routes,
          pageBuilder: (context, state) {
            final pageContent = Scaffold(
              backgroundColor: AppTheme().roundContainerColor,
              body: builder(state),
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            );
            if (transType == ScreenTransType.fade) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            } else if (transType == ScreenTransType.popup) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 1),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child);
                },
              );
            }
            return CupertinoPage(child: pageContent);
          },
        );
  final ScreenTransType transType;
}

Future<T?> pushPage<T extends Object?>(BuildContext context,
    {String path = '', Map<String, dynamic>? ext}) {
  Logger.write("path is $path");
  return context.push(_configPaths(path, ext));
}

void replacePage(BuildContext context,
    {String path = '', Map<String, dynamic>? ext}) {
  Logger.write("path is $path");
  context.replace(_configPaths(path, ext));
}

void popPage(BuildContext context,
    {String path = '', Map<String, dynamic>? ext}) {
  Logger.write("page path is $path");
  popPagePath(context, path);
}

Map<String, dynamic>? parseQueryParams(String? queryParams) {
  Map<String, dynamic>? jsonObject;
  if (queryParams != null) {
    final jsonBytes = base64Url.decode(queryParams);
    final jsonString = utf8.decode(jsonBytes);
    jsonObject = json.decode(jsonString);
  }
  return jsonObject;
}

String encodeParams(Map<String, dynamic> queryParams) {
  var jsonBytes = utf8.encode(json.encode(queryParams));
  var base64String = base64Url.encode(jsonBytes);
  return base64String;
}
