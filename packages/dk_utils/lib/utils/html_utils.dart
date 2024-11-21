class HtmlUtils {
  static String getHtmlData(String bodyHTML) {
    String head =
        "<head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"><style>body{word-wrap:break-word;white-space: pre-wrap;rgba(255, 255, 255, 0); }</style></head>";
    return "<html>$head<body>$bodyHTML</body></html>";
  }

  static String getHtmlDataAndColor(String bodyHTML, String color) {
    String head =
        "<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\"><style>img{max-width: 100%; width:100%; height:auto;}*{word-wrap:break-word;margin:0px;padding: 10px 8px 8px 8px;color:$color!important;}</style></head>";
    return "<html>$head<body>$bodyHTML</body></html>";
    }

  static String getHtmlDataSizeAndColor(
      String bodyHTML, int size, String color) {
    String head =
        "<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\"><style>img{max-width: 100%; width:100%; height:auto;}body{word-wrap:break-word;margin:0px;font-size:${size}px;color:}</style></head>";
    return "<html>$head<body>$bodyHTML</body></html>";
  }
}
