import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import '../controllers/transition_controller.dart';

class TransitionView extends GetView<TransitionController> {
  const TransitionView({super.key});
  @override
  Widget build(BuildContext context) {
    controller;
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
                return const SizedBox.shrink(); 
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisSize:
                  MainAxisSize
                      .min,
              children: [
                Image.asset(
                  "assets/images/ikonSplashScreen.png",
                  errorBuilder: (context, error, stackTrace) {
                    print("Error loading ikonSplashScreen.png: $error");
                    return const Icon(
                      Icons.image_not_supported,
                      size: 50,
                    ); 
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
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/vektorBiruSplashScreen.png",
              errorBuilder: (context, error, stackTrace) {
                print("Error loading vektorBiruSplashScreen.png: $error");
                return const SizedBox.shrink(); 
              },
            ),
          ),
        ],
      ),
    );
  }
}
