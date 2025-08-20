// lib/app/core/services/token_storage.dart
import 'package:get_storage/get_storage.dart';

class TokenStorage {
  static const _boxName = 'tumbuhkita';
  static const _keyAccessToken = 'access_token';
  static const _keyRole = 'user_role';
  static const _keyUserId = 'user_id';
  static const _keyUsername = 'user_name';
  static const _keyEmail = 'user_email';

  final GetStorage _box = GetStorage(_boxName);

  String? get accessToken => _box.read<String?>(_keyAccessToken);
  String? get role => _box.read<String?>(_keyRole);
  int? get userId => _box.read<int?>(_keyUserId);
  String? get username => _box.read<String?>(_keyUsername);
  String? get email => _box.read<String?>(_keyEmail);

  Future<void> saveSession({
    required String token,
    required String role,
    required int userId,
    required String username,
    required String email,
  }) async {
    await _box.write(_keyAccessToken, token);
    await _box.write(_keyRole, role);
    await _box.write(_keyUserId, userId);
    await _box.write(_keyUsername, username);
    await _box.write(_keyEmail, email);
  }

  Future<void> clear() async {
    await _box.remove(_keyAccessToken);
    await _box.remove(_keyRole);
    await _box.remove(_keyUserId);
    await _box.remove(_keyUsername);
    await _box.remove(_keyEmail);
  }

  bool get isLoggedIn => (accessToken ?? '').isNotEmpty;
}
