import 'package:get/get.dart';

import '../controllers/detail_baby_controller.dart';

class DetailBabyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBabyController>(
      () => DetailBabyController(),
    );
  }
}
