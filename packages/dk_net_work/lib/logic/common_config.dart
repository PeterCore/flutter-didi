import '../http_provider/rest_client_utils.dart';

class CommonConfigManager {
  static CommonConfigManager instance = CommonConfigManager._();
  CommonConfigManager._();

  int captchaSwitch = 0;
  int miyaoSwitch = 0;
  void fetchCommonConfig() {
    getCommonConfig().then((value) {
      value.ifSuccess((data) {
        captchaSwitch = data.data?.captchaSwitch ?? 0;
        miyaoSwitch = data.data?.miyaoSwitch ?? 0;
      });
      value.ifFailure((e) {});
    });
  }

  void restore() {
    captchaSwitch = 0;
    miyaoSwitch = 0;
  }
}
