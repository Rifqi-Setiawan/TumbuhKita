import 'package:get/get.dart';

import '../controllers/home_posyandu_controller.dart';

class HomePosyanduBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePosyanduController>(
      () => HomePosyanduController(),
    );
  }
}
