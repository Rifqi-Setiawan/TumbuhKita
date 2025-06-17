import 'package:get/get.dart';

import '../controllers/add_kegiatan_posyandu_controller.dart';

class AddKegiatanPosyanduBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddKegiatanPosyanduController>(
      () => AddKegiatanPosyanduController(),
    );
  }
}
