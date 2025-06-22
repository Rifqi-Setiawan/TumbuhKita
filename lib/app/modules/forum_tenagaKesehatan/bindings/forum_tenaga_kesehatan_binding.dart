import 'package:get/get.dart';

import '../controllers/forum_tenaga_kesehatan_controller.dart';

class ForumTenagaKesehatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForumTenagaKesehatanController>(
      () => ForumTenagaKesehatanController(),
    );
  }
}
