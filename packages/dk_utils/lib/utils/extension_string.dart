import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';

///字符串扩展类
extension StringExtension on String {
  String calculateFileETagWithPath() {
    String eTag = 'Fto5o-5ea0sNMlW_75VgGJCv2AcJ';
    File file = File(this);
    if (file.existsSync()) {
      // 读取文件内容
      int prefix = 0x16;
      int blockSize = 4 * 1024 * 1024;
      List<int> fileBytes = file.readAsBytesSync();
      List<int> eTagBytes = [];
      int bufferSize = fileBytes.length;
      int blockCount = 0;
      final remainder = bufferSize % blockSize;
      final fa = bufferSize / blockSize;
      blockCount = fa.floor();
      if (bufferSize > blockSize) {
        List<int> bytes = [];
        for (int i = 0; i < blockCount + 1; i++) {
          int length = blockSize;
          if (i == blockCount && remainder > 0) {
            length = remainder;
          }
          List<int> subs =
              fileBytes.sublist(i * blockSize, i * blockSize + length);
          Digest sha1Hash = sha1.convert(subs);
          List<int> sha1Bytes = sha1Hash.bytes;
          bytes.addAll(sha1Bytes);
        }
        Digest sha1HashSecond = sha1.convert(bytes);
        eTagBytes.addAll(sha1HashSecond.bytes);
      } else {
        Digest sha1Hash = sha1.convert(fileBytes);
        List<int> sha1Bytes = sha1Hash.bytes;
        eTagBytes.addAll(sha1Bytes);
      }
      if (eTagBytes.isEmpty) return eTag;
      if (bufferSize > blockSize) {
        prefix = 0x96;
      }
      eTagBytes.insert(0, prefix);
      eTag = base64UrlEncode(eTagBytes);
    }
    print('eTag is $eTag');
    return eTag;
  }

  String toMd5() {
    var bytes = utf8.encode(this);
    var digest = md5.convert(bytes);
    return digest.toString();
  }

  bool isValidRemarkName() {
    RegExp regex = RegExp(r'^[\u4e00-\u9fa5_a-zA-Z0-9]+$');
    return regex.hasMatch(this);
  }

  String getFileMimeType() {
    String mimeType = '';
    RegExp regExp = RegExp(r'\.([a-zA-Z0-9]+)$');
    Match? match = regExp.firstMatch(this);
    if (match != null) {
      mimeType = match.group(1)!;
    }

    return mimeType;
  }

  String deleteEscapeChar() {
    return replaceAll(r'\', '');
  }

  bool isVideoFile() {
    final regex = RegExp(r'\.(mp4|mov|avi|flv|wmv)$', caseSensitive: false);
    return regex.hasMatch(this);
  }

  bool isImageFile() {
    final regex = RegExp(r'\.(jpeg|jpg|png)$', caseSensitive: false);
    return regex.hasMatch(this);
  }

  bool isValidUrl() {
    // 定义正则表达式
    final regex = RegExp(r'^(http|https)://');
    return regex.hasMatch(this);
  }

  String getAddressIp() {
    if (isEmpty) return '';
    RegExp regex = RegExp(r'^(http[s]?:\/\/)?([^\s:/]+)(.*)$');
    try {
      Match? match = regex.firstMatch(this);
      if (match != null && match.groupCount >= 2) {
        String ip = match.group(2)!;
        return ip;
      }
    } catch (e) {
      return this;
    }
    return this;
  }

  String fixAutoLines() {
    return Characters(this).join('\u{200B}');
  }

  String matchLastPath(String scheme) {
    String? lastPath = '';
    if (Uri.parse(this).scheme != scheme) return '';
    lastPath = RegExp(r'\/([^\/]+)$').firstMatch(this)?.group(1);
    return lastPath ?? '';
  }
}
