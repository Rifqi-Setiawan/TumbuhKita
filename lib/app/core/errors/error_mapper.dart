import 'package:dio/dio.dart';
import 'app_exception.dart';

AppException mapDioError(DioException e) {
  if (e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout) {
    return TimeoutExceptionX('Koneksi timeout. Coba lagi.');
  }
  final status = e.response?.statusCode;
  final msg = e.response?.data is Map<String, dynamic>
      ? (e.response?.data['message']?.toString() ?? 'Terjadi kesalahan.')
      : (e.message ?? 'Terjadi kesalahan.');

  if (status == 401) return UnauthorizedException('Sesi berakhir, silakan login ulang.', raw: e);
  if (status != null && status >= 500) return ServerException('Server bermasalah.', code: status, raw: e);
  return NetworkException(msg, code: status, raw: e);
}
