import 'package:get/get.dart';

import '../controllers/transition_3_controller.dart';

class Transition3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Transition3Controller>(
      () => Transition3Controller(),
    );
  }
}
