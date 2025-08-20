import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import '../token_storage.dart';

class AuthInterceptor extends dio.Interceptor {
  final tokenStorage = TokenStorage();

  @override
  void onRequest(dio.RequestOptions options, dio.RequestInterceptorHandler handler) {
    final token = tokenStorage.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] ??= 'application/json';
    handler.next(options);
  }

  @override
  void onError(dio.DioException err, dio.ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await tokenStorage.clear();
      // redirect ke login
      if (Get.currentRoute != Routes.LOGIN) {
        Get.offAllNamed(Routes.LOGIN);
      }
    }
    handler.next(err);
  }
}