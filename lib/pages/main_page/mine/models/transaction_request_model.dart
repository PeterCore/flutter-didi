class TransactionRequestModel {
  String name;
  int type;
  String formatTime;
  Function(String formatTime, int type)? onSelectedTimestamp;

  TransactionRequestModel({
    required this.name,
    required this.type,
    required this.formatTime,
    required this.onSelectedTimestamp,
  });

  void selected(String dateTime, int sortId) {
    formatTime = dateTime;
    onSelectedTimestamp?.call(formatTime, sortId);
  }
}
