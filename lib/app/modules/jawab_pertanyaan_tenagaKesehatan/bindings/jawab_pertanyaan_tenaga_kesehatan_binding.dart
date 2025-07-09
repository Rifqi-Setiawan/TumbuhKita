import 'package:get/get.dart';

import '../controllers/jawab_pertanyaan_tenaga_kesehatan_controller.dart';

class JawabPertanyaanTenagaKesehatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JawabPertanyaanTenagaKesehatanController>(
      () => JawabPertanyaanTenagaKesehatanController(),
    );
  }
}
