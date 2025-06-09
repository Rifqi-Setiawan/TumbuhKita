import 'package:get/get.dart';

import '../controllers/imunisasi_orangTua_controller.dart';

class ImunisasiOrangtuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImunisasiOrangtuaController>(
      () => ImunisasiOrangtuaController(),
    );
  }
}
