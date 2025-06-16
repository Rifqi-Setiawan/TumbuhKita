import 'package:get/get.dart';

import '../controllers/statistik_posyandu_controller.dart';

class StatistikPosyanduBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatistikPosyanduController>(
      () => StatistikPosyanduController(),
    );
  }
}
