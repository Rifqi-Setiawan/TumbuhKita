import 'package:get_storage/get_storage.dart';

class RoleStorageHelper {
  static final _box = GetStorage();
  static const String _roleKey = 'user_role';

  static Future<void> saveRole(String role) async {
    await _box.write(_roleKey, role);
  }

  static String? getRole() {
    return _box.read(_roleKey);
  }

  static Future<void> clearRole() async {
    await _box.remove(_roleKey);
  }
}
