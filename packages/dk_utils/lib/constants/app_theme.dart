//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///app颜色主体配置
class AppTheme {
  //主题
  final ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    tabBarTheme: const TabBarTheme(dividerColor: Colors.transparent),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          decoration: TextDecoration.none,
          color: Color(0xFF15151D),
          fontFamily: 'PingFang SC'),
      bodyLarge: TextStyle(
          decoration: TextDecoration.none,
          color: Color(0xFF15151D),
          fontFamily: 'PingFang SC'),
      bodySmall: TextStyle(
          decoration: TextDecoration.none,
          color: Color(0xFF15151D),
          fontFamily: 'PingFang SC'),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
    ),
  );

  // final List<Color> buttonGradientColors = const [
  //   Color(0xFF0538FF),
  //   Color(0xFF11BBDD)
  // ];
  // final double borderRadius = 30.0;

  static const List<Color> buttonGradientColors = [
    Color(0xFF15151D),
    Color(0xFF15151D)
  ];
  static const double borderRadius = 16.0;

  //V2
  final Color inputBackgroundColor = const Color(0xFFF1F3F5);
  final Color wordPrimaryColor = const Color(0xFF15151D);
  final Color wordSecondColor = const Color(0xFF5C5D69);
  final Color themeBackGroundColor = const Color(0xFF6D68ED);
  final Color wordGoldColor = const Color(0xFFFFD0A1);
  final Color wordGreenColor = const Color(0xFFEEFCE5);
  final Color roundContainerColor = Colors.white;
  final Color dividerLineColor = const Color(0xFFDEDEDE);
  final Color roundContainerBlackColor = const Color(0xFF282440);
  final Color goldBackgroundColor = const Color(0xFFE6DBCF);
  final Color blueBackgroundColor = const Color(0xFFC4D4ED);

  // final Color roundContainerColor = const Color(0xFFCBF0FF).withOpacity(0.05);
  final Color blueThemeColor = const Color(0xFF3ABDFE);
  final Color redThemeColor = const Color(0xFFFF6B75);
  final Color colorAlter = const Color(0xFF6D68ED);
  final Color themeTextColor = const Color(0xFF6D68ED);

  ///颜色
  //状态栏字体颜色
  final Brightness brightness = Brightness.light;

  //主题色
  final Color colorPrimaryBrand = const Color(0xFF1FAC84);
  final Color colorPrimaryAssist = const Color(0xFFFF9F10);

  //背景色
  final Color colorFillBgLight = const Color(0xFFFFFFFF);
  final Color colorFillBgGrey = const Color(0xFFF0F3F5);
  final Color colorFillBgDeep = const Color(0xFFE4E6E8);

  //fill
  final Color colorFillLayer = const Color(0xFFFFFFFF);
  final Color colorFillLayerBg = const Color(0xFFFFFFFF);
  final Color colorFillMaskLight = const Color(0x1A000000); //0.1
  final Color colorFillMaskRegular = const Color(0x99000000); //0.6
  final Color colorSliderBg = const Color(0xFFCBF0FF);

  //文字颜色
  final Color colorTxtDefPrimary = const Color(0xFF252C2F);
  final Color colorTxtDefRegular = const Color(0xFF4D585B);
  final Color colorTxtDefScondary = const Color(0xFF92A29F);
  final Color colorTxtDefTertiary = const Color(0xFFBCBCBC);
  final Color colorTxtDefDisabled = const Color(0xFFD0D0D0);

  final Color colorBlack80 = const Color(0xFF101010);
  final Color colorOrigen = const Color(0xFFFA7328);
  // final Color colorTxtInvPrimary = const Color(0xFFFFFFFF);
  final Color colorTxtInvPrimary = const Color(0xFF000000);

  final Color colorTxtInvRegular = const Color(0xCCFFFFFF); //0.8
  final Color colorTxtInvScondary = const Color(0x99FFFFFF); //0.6
  final Color colorTxtInvDisabled = const Color(0x33FFFFFF); //0.2
  final Color colorTxtInvTertiary = const Color(0x4DBCBCBC); //0.3

  //other
  final Color colorBorderRegular = const Color(0xFFE6ECEA);
  final Color colorErrorAssist = const Color(0xFFFCCDD0);
  final Color colorErrorBase = const Color(0xFFFF6B75);
  final Color colorInfoLight = const Color(0xFFAFC8F8);
  final Color colorInfoBase = const Color(0xFF3A74E3);
  final Color colorWarningAssist = const Color(0xFFF1E1CE);
  final Color colorWarningBase = const Color(0xFFFFCC90);
  // final Color colorAlter = const Color(0xFF3ABDFE);

  final Color colorPrimary = const Color(0xFF20212A);

  //extra
  final Color colorInvertCenter = const Color(0xFFD5F1D6);
  final Color colorVipText = const Color(0xFFFFD0A1);
  final Color colorTeamText = const Color(0xFFEEFCE5);
  final Color colorHomeBtn = const Color.fromRGBO(255, 255, 255, 0.2);

  ///圆角
  final double radiusNone = 0;

  ///圆角
  double get radiusRound => 360.0.w;

  double get radius4xl => 32.0.w;

  double get radius3xl => 24.0.w;

  double get radius2xl => 20.0.w;

  double get radiusXl => 16.0.w;

  double get radiusL => 12.0.w;

  double get radiusM => 8.0.w;

  double get radiusS => 4.0.w;
}
