/// FileName AppToken
///
/// @Author zhangchun
/// @Date 2023/6/13 10:33
///
/// @Description TODO
class AppToken {
  factory AppToken() => _getInstance()!;

  static AppToken? get instance => _getInstance();
  static AppToken? _instance;

  late String token = '';
  AppToken._internal();

  static AppToken? _getInstance() {
    _instance ??= AppToken._internal();
    return _instance;
  }

  configToken(String aToken) {
    token = aToken;
  }

  getToken() {
    return token;
  }
}
