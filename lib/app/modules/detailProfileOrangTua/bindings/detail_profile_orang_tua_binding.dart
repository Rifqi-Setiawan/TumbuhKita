import 'package:get/get.dart';

import '../controllers/detail_profile_orang_tua_controller.dart';

class DetailProfileOrangTuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProfileOrangTuaController>(
      () => DetailProfileOrangTuaController(),
    );
  }
}
