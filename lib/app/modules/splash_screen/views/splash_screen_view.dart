import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, 
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/vektorUnguSplashScreen.png",
              errorBuilder: (context, error, stackTrace) {
                print("Error loading vektorUnguSplashScreen.png: $error");
                return const SizedBox.shrink(); // Atau placeholder error
              },
            ),
          ),

          // Konten Tengah (Ikon dan Teks)
          Center(
            child: Column(
              mainAxisSize:
                  MainAxisSize
                      .min, // Agar Column hanya mengambil ruang yang dibutuhkan
              children: [
                Image.asset(
                  "assets/images/ikonSplashScreen.png",
                  // Anda bisa mengatur width/height jika perlu
                  // height: 100.h,
                  // width: 100.w,
                  errorBuilder: (context, error, stackTrace) {
                    print("Error loading ikonSplashScreen.png: $error");
                    return const Icon(
                      Icons.image_not_supported,
                      size: 50,
                    ); // Placeholder error
                  },
                ),
                SizedBox(height: 16.h), 
                Text(
                  "Temani setiap langkah kecil \ndan momen berharga \nsi Buah Hati",
                  textAlign: TextAlign.center, 
                  style: AppTextStyles.heading8SemiBold.copyWith(
                    color: const Color(0xff4820B2),
                  ),
                ),
              ],
            ),
          ),

          // Vektor Biru di Kiri Bawah
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/vektorBiruSplashScreen.png",
              // Anda bisa mengatur width/height jika perlu
              // width: 150.w,
              // fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                print("Error loading vektorBiruSplashScreen.png: $error");
                return const SizedBox.shrink(); // Atau placeholder error
              },
            ),
          ),
        ],
      ),
    );
  }
}
