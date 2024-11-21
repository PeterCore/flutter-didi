/// FileName app_config
///
/// @Author zhangchun
/// @Date 2024/9/8 14:11
///
/// @Description TODO
///
///
// appName: "IDG",
// jsonUrlList: [
// 'https://newxinlailai.oss-cn-hongkong.aliyuncs.com/cnybaseurl.json'
// ],
// appKey: 'xPxo2S5uGPhKHx5g',
// appIv: '0a1b2c3d4e5f6789',
// abroadFields: 122908,
// domesticOid: 83479,
// domesticMid: 138897,
// unitByUSDT: 'USDT',
// unitByYUAN: "元");
class AppConfig {
  /// 公用配置
  //应用名称
  static const String appName = "IDG";
  //oos请求地址
  static const List<String> jsonUrlList = [
    'https://newxinlailai.oss-cn-hongkong.aliyuncs.com/cnybaseurl.json'
  ];

  //单位
  static const String unitByUSDT = "USDT";
  static const String unitByYUAN = "元";
  List<String> get disallowedPasswords => [
        "aa123123",
        "aa123456",
        "aa168168",
        "aa123321",
        "aa112233",
        "aa000000",
        "aa111111",
        "aa222222",
        "aa333333",
        "qaz123123",
        "qaz123321",
        "qaz168168",
        "qwe168168",
        "qwe123123",
        "qwe123321",
        "a1234567",
        "a12345678",
        "a123456789",
        "asd168168",
        "asd123123",
        "asd123321",
        "asd112233",
        "asd123456",
        "zxc123123",
        "zxc123456",
        "zxc123321",
        "zxc168168",
      ];
}
