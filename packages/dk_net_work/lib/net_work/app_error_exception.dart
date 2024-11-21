class AppErrorException implements Exception {
  final String? message;
  final int? errorCode;

  AppErrorException(this.message, this.errorCode);
}
