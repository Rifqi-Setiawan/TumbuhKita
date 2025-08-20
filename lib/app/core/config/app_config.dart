import 'package:flutter/foundation.dart';
import 'env.dart';

@immutable
class AppConfig {
  final String appName;
  final String flavor;      
  final String apiHost;   
  final String apiBasePath; 
  final Duration connectTimeout;
  final Duration receiveTimeout;

  const AppConfig({
    required this.appName,
    required this.flavor,
    required this.apiHost,
    required this.apiBasePath,
    required this.connectTimeout,
    required this.receiveTimeout,
  });

  factory AppConfig.fromEnv() {
    assert(Env.apiHost.startsWith('http'),
        'API_HOST harus diawali http atau https');

    return AppConfig(
      appName: Env.appName,
      flavor: Env.flavor,
      apiHost: Env.apiHost,
      apiBasePath: Env.apiBasePath,
      connectTimeout: Duration(milliseconds: Env.connectTimeoutMs),
      receiveTimeout: Duration(milliseconds: Env.receiveTimeoutMs),
    );
  }
  bool get isProd => flavor == 'prod';
  bool get isStaging => flavor == 'staging';
  bool get isDev => flavor == 'dev';
  Uri apiUri(String path, {Map<String, dynamic>? query}) {
    final cleanBase = apiBasePath.replaceFirst(RegExp(r'/$'), '');
    final cleanPath = path.replaceFirst(RegExp(r'^/'), '');
    final base = Uri.parse(apiHost);
    return base.replace(path: '$cleanBase/$cleanPath', queryParameters: query);
  }
  @override
  String toString() =>
      'AppConfig(flavor=$flavor, host=$apiHost, basePath=$apiBasePath)';
}
