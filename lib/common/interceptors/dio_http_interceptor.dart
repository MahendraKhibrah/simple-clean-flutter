import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:template/common/utils/utils.dart';
import 'package:template/features/auth/data/auth_shared_preference.dart';

class DioHttpInterceptor extends Interceptor {
  final AuthSharedPreference _authSharedPreference;

  DioHttpInterceptor(this._authSharedPreference);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final bearerToken = await _authSharedPreference.getBearerToken();
    options.headers['Authorization'] = bearerToken;

    _debugPrintCURL(options);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        'RESPONSE[${response.statusCode}]: ${response.requestOptions.uri}');
    debugPrint('RESPONSE HEADERS: ${response.headers}');
    debugPrint('RESPONSE DATA: ${response.data}');
    super.onResponse(response, handler);
  }

  void _debugPrintCURL(RequestOptions options) {
    String jsonData;

    if (options.data is FormData) {
      jsonData = 'FormData';
    } else {
      try {
        jsonData = options.data?.toString() ?? '';
      } on Exception {
        jsonData = '';
      }
    }

    String curlCommand = '\ncurl -X ${options.method} ${options.uri}\n';
    options.headers.forEach((key, value) {
      curlCommand += '-H \'$key: $value\'\n';
    });

    if (jsonData.isNotEmpty) {
      curlCommand += '-d \'$jsonData\'\n';
    }

    Utils.printWrapped(curlCommand);
  }
}
