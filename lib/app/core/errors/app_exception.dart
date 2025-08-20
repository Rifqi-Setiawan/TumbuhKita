class AppException implements Exception {
  final String message;
  final int? code;
  final dynamic raw;

  AppException(this.message, {this.code, this.raw});

  @override
  String toString() => 'AppException($code): $message';
}

class NetworkException extends AppException {
  NetworkException(String message, {int? code, dynamic raw})
      : super(message, code: code, raw: raw);
}

class TimeoutExceptionX extends AppException {
  TimeoutExceptionX(String message, {dynamic raw}) : super(message, raw: raw);
}

class UnauthorizedException extends AppException {
  UnauthorizedException(String message, {dynamic raw}) : super(message, code: 401, raw: raw);
}

class ServerException extends AppException {
  ServerException(String message, {int? code, dynamic raw}) : super(message, code: code, raw: raw);
}
