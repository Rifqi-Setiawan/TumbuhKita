import 'dart:async';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class Transition2Controller extends GetxController {
  final RxBool _navigateToLoginCalled = false.obs;

  
  @override
  void onInit() {
    super.onInit();
    _navigateToLoginAfterDelay();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _navigateToLoginAfterDelay() {
    if (_navigateToLoginCalled.value) {
      print(
        "SplashScreenController: _navigateToLoginAfterDelay sudah pernah dipanggil.",
      );
      return;
    }
    _navigateToLoginCalled.value = true;

    Timer(const Duration(seconds: 3), () {
      print(
        "SplashScreenController: Timer selesai, navigasi ke ${Routes.TRANSITION_3}",
      );
      Get.offAllNamed(Routes.TRANSITION_3);
    });
  }
}
