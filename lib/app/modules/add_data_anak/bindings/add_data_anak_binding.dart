import 'package:get/get.dart';

import '../controllers/add_data_anak_controller.dart';

class AddDataAnakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddDataAnakController>(
      () => AddDataAnakController(),
    );
  }
}
