import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../config/app_config.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

class DioClient extends GetxService {
  late final dio.Dio _dio;
  dio.Dio get dioInstance => _dio;

  final AppConfig cfg = Get.find<AppConfig>();

  Future<DioClient> init() async {
    _dio = dio.Dio(
      dio.BaseOptions(
        baseUrl: cfg.apiHost,
        connectTimeout: cfg.connectTimeout,
        receiveTimeout: cfg.receiveTimeout,
        headers: const {
          'Accept': 'application/json',
        },
        validateStatus: (code) => code != null && code >= 100 && code < 600,
      ),
    );

    _dio.interceptors.addAll([
      AuthInterceptor(),    
      LoggingInterceptor(), 
    ]);

    return this;
  }

  /// Helper generic berdasar `Uri` agar basePath selalu benar.
  Future<dio.Response<T>> getPath<T>(
    String path, {
    Map<String, dynamic>? query,
    dio.CancelToken? cancelToken,
  }) {
    final uri = cfg.apiUri(path, query: query);
    return _dio.getUri<T>(uri, cancelToken: cancelToken);
  }

  Future<dio.Response<T>> postPath<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? query,
    dio.CancelToken? cancelToken,
  }) {
    final uri = cfg.apiUri(path, query: query);
    return _dio.postUri<T>(uri, data: data, cancelToken: cancelToken);
  }

  Future<dio.Response<T>> putPath<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? query,
    dio.CancelToken? cancelToken,
  }) {
    final uri = cfg.apiUri(path, query: query);
    return _dio.putUri<T>(uri, data: data, cancelToken: cancelToken);
  }

  Future<dio.Response<T>> deletePath<T>(
    String path, {
    Map<String, dynamic>? query,
    Object? data,
    dio.CancelToken? cancelToken,
  }) {
    final uri = cfg.apiUri(path, query: query);
    return _dio.deleteUri<T>(uri, data: data, cancelToken: cancelToken);
  }
}
