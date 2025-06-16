import 'package:get/get.dart';

import '../controllers/home_tenaga_kesehatan_controller.dart';

class HomeTenagaKesehatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeTenagaKesehatanController>(
      () => HomeTenagaKesehatanController(),
    );
  }
}
