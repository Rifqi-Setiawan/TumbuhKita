import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/errors/app_exception.dart';
import 'package:tumbuh_kita/app/core/errors/error_mapper.dart';
import 'package:tumbuh_kita/app/core/services/dio_client.dart';
import 'package:tumbuh_kita/app/core/services/token_storage.dart';
import 'package:tumbuh_kita/app/data/models/auth/login_request.dart';
import 'package:tumbuh_kita/app/data/models/auth/login_response.dart';

class AuthRepository {
  final DioClient _client = Get.find<DioClient>();
  final TokenStorage _tokenStorage = TokenStorage();

  Future<LoginResponse> login(
    LoginRequest req, {
    dio.CancelToken? cancelToken,
  }) async {
    try {
      final dio.Response<Map<String, dynamic>> res =
          await _client.postPath<Map<String, dynamic>>(
        'auth/login',
        data: req.toJson(),
        cancelToken: cancelToken,
      );

      final map = res.data ?? {};
      // server kirim { message, token, user: {..} }
      final parsed = LoginResponse.fromJson(map);

      // simpan sesi (token + role + info user)
      await _tokenStorage.saveSession(
        token: parsed.token,
        role: parsed.user.role,
        userId: parsed.user.id,
        username: parsed.user.username,
        email: parsed.user.email,
      );

      return parsed;
    } on dio.DioException catch (e) {
      throw mapDioError(e);
    } catch (e) {
      throw AppException('Kesalahan tidak terduga', raw: e);
    }
  }

  Future<void> logout() => _tokenStorage.clear();

  bool get isLoggedIn => _tokenStorage.isLoggedIn;
}