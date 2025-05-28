import 'dart:async';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  final RxBool _navigateToLoginCalled = false.obs;
  @override
  void onInit() {
    super.onInit();
    print("SplashScreenController: onInit");
  }

  @override
  void onReady() {
    super.onReady();
    print("SplashScreenController: onReady - Memulai timer navigasi.");
    _navigateToLoginAfterDelay();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _navigateToLoginAfterDelay() {
    // Pemeriksaan untuk memastikan fungsi ini hanya dieksekusi sekali.
    if (_navigateToLoginCalled.value) {
      print(
        "SplashScreenController: _navigateToLoginAfterDelay sudah pernah dipanggil.",
      );
      return;
    }
    _navigateToLoginCalled.value = true;

    Timer(const Duration(seconds: 3), () {
      // Atur durasi splash screen di sini
      print(
        "SplashScreenController: Timer selesai, navigasi ke ${Routes.LOGIN}",
      );
      // Get.offAllNamed akan menghapus semua rute sebelumnya (termasuk splash screen)
      // dari tumpukan navigasi, sehingga pengguna tidak bisa kembali ke splash screen.
      // Pastikan Routes.LOGIN sudah terdefinisi dengan benar di file app_pages.dart Anda
      // dan ada GetPage yang terdaftar untuk rute tersebut.
      Get.offAllNamed(Routes.LOGIN);
    });
  }
}
