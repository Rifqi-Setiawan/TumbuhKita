import 'package:dio/dio.dart' as dio;
import 'app_exception.dart';

AppException mapDioError(dio.DioException e) {
  final status = e.response?.statusCode;
  final data = e.response?.data;
  String serverMsg = '';
  if (data is Map && data['message'] != null) {
    serverMsg = data['message'].toString();
  } else if (e.message != null) {
    serverMsg = e.message!;
  }

  if (status == 400) {
    return AppException(serverMsg.isNotEmpty ? serverMsg : 'Permintaan tidak valid',
        code: 400, raw: e);
  }
  if (status == 401) {
    return UnauthorizedException('Sesi berakhir, silakan login ulang.', raw: e);
  }
  if (status != null && status >= 500) {
    return ServerException('Server bermasalah.', code: status, raw: e);
  }
  if (e.type == dio.DioExceptionType.connectionTimeout ||
      e.type == dio.DioExceptionType.receiveTimeout) {
    return TimeoutExceptionX('Koneksi timeout. Coba lagi.', raw: e);
  }

  return NetworkException(serverMsg.isNotEmpty ? serverMsg : 'Terjadi kesalahan jaringan',
      code: status, raw: e);
}
