import 'package:get/get.dart';

import '../controllers/transition_2_controller.dart';

class Transition2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Transition2Controller>(
      () => Transition2Controller(),
    );
  }
}
