import 'dart:async';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class TransitionController extends GetxController {
  final RxBool _navigateToLoginCalled = false.obs;
  String tes = "tes";
  @override
  void onInit() {
    super.onInit();
    print("SplashScreenController: onInit");
    _navigateToLoginAfterDelay();
  }

  @override
  void onReady() {
    super.onReady();
    print("SplashScreenController: onReady - Memulai timer navigasi.");

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
        "SplashScreenController: Timer selesai, navigasi ke ${Routes.LOGIN}",
      );
      Get.offAllNamed(Routes.NAVIGATION);
    });
  }
}
