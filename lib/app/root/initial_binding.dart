import 'package:get/get.dart';
import 'package:tumbuh_kita/app/data/models/repositories/auth_repository.dart';
import '../core/services/dio_client.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<DioClient>()) {
      Get.putAsync<DioClient>(() async => await DioClient().init(), permanent: true);
    }
    Get.lazyPut<AuthRepository>(() => AuthRepository(), fenix: true);
  }
}
