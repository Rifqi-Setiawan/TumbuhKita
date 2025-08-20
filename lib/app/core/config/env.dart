class Env {
  static const appName = String.fromEnvironment(
    'APP_NAME',
    defaultValue: 'Tumbuh Kita',
  );
  static const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  static const apiHost = String.fromEnvironment(
    'API_HOST',
    defaultValue: 'http://10.0.2.2:3000',
  );
  static const apiBasePath = String.fromEnvironment(
    'API_BASE_PATH',
    defaultValue: '/api',
  );
  static const connectTimeoutMs = int.fromEnvironment(
    'CONNECT_TIMEOUT_MS',
    defaultValue: 15000,
  );
  static const receiveTimeoutMs = int.fromEnvironment(
    'RECEIVE_TIMEOUT_MS',
    defaultValue: 20000,
  );
}
