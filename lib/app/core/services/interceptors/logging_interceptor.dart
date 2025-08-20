import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../config/app_config.dart';

class LoggingInterceptor extends dio.Interceptor {
  final AppConfig cfg = Get.find<AppConfig>();
  bool get _enabled => cfg.isDev || cfg.isStaging;

  @override
  void onRequest(dio.RequestOptions options, dio.RequestInterceptorHandler handler) {
    if (_enabled) {
      // ignore: avoid_print
      print('[REQ] ${options.method} ${options.uri}');
    }
    handler.next(options);
  }

  @override
  void onResponse(dio.Response response, dio.ResponseInterceptorHandler handler) {
    if (_enabled) {
      // ignore: avoid_print
      print('[RES] ${response.statusCode} ${response.requestOptions.uri}');
    }
    handler.next(response);
  }

  @override
  void onError(dio.DioException err, dio.ErrorInterceptorHandler handler) {
    if (_enabled) {
      // ignore: avoid_print
      print('[ERR] ${err.response?.statusCode} ${err.requestOptions.uri} ${err.message}');
    }
    handler.next(err);
  }
}
