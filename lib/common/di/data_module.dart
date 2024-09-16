import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:template/common/interceptors/dio_error_interceptor.dart';
import 'package:template/common/interceptors/dio_http_interceptor.dart';
import 'package:template/features/auth/data/auth_shared_preference.dart';
import 'package:template/features/fact/data/fact_api.dart';
import 'get_it.dart';

@module
abstract class DataModule {
  @singleton
  AuthSharedPreference get authSharedPreference;

  @singleton
  Dio get dio => Dio(
        BaseOptions(
          responseType: ResponseType.plain,
          connectTimeout: const Duration(minutes: 10),
          receiveTimeout: const Duration(minutes: 10),
        ),
      )
        ..interceptors.add(DioHttpInterceptor(getIt<AuthSharedPreference>()))
        ..interceptors.add(DioErrorInterceptor());

  @singleton
  FactApi get factApi;
}
