import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// FlutterTransformer
///
typedef DecodeCallback = dynamic Function(String);

class FlutterTransformer extends SyncTransformer {
  FlutterTransformer() : super(jsonDecodeCallback: parseJson);

  @override
  Future transformResponse(
    RequestOptions options,
    ResponseBody responseBody,
  ) async {
    //强制用json解析
    responseBody.headers['content-type'] = ['application/json'];
    return super.transformResponse(options, responseBody);
  }
}

final _myJsonCodec = JsonCodec.withReviver((dynamic key, dynamic value) {
  // if (key == 'status') {
  //   if (value is String) {
  //     if (int.tryParse(value) != null) {
  //       return int.parse(value);
  //     } else {
  //       return 0;
  //     }
  //   }
  // }
  return value;
});

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

_parseAndDecode(String response) {
  return _myJsonCodec.decode(response);
}
