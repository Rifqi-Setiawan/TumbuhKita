import 'dart:async';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class Transition3Controller extends GetxController {
  final RxBool _navigateToLoginCalled = false.obs;
  @override
  void onInit() {
    super.onInit();
    print("SplashScreenController: onInit");
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
        "SplashScreenController: Timer selesai, navigasi ke ${Routes.NAVIGATION}",
      );
      Get.offAllNamed(Routes.NAVIGATION);
    });
  }
  
}
