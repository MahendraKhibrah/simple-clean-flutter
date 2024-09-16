import 'dart:async';

import 'package:dio/dio.dart';
import 'package:template/common/env.dart';

class FactApi {
  final baseUrl = AppEnv.factUrl;
  final Dio _dio;

  FactApi(this._dio);

  FutureOr<Response> getRandomFact() async {
    return await _dio.get(baseUrl);
  }
}
