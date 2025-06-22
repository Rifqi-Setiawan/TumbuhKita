import 'package:get/get.dart';

import '../controllers/statistik_tenaga_kesehatan_controller.dart';

class StatistikTenagaKesehatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatistikTenagaKesehatanController>(
      () => StatistikTenagaKesehatanController(),
    );
  }
}
