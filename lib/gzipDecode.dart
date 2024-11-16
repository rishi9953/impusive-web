// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

String decodeGzipResponse(String base64EncodedResponse) {
  Uint8List compressedBytes = base64.decode(base64EncodedResponse);
  List<int> decompressedBytes = GZipCodec().decode(compressedBytes);
  String decodedString = utf8.decode(decompressedBytes);
  return decodedString;
}
