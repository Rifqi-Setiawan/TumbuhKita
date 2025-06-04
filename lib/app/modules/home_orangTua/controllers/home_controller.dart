
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
import 'dart:math' as math;

class HomeController extends GetxController {

  final List<GridItemInfo> dummyGridItems = [
      GridItemInfo(
        title: "Tinggi Badan",
        value: "50",
        unit: "cm",
        statusText: "Normal",
        iconData: Icons.straighten,
        iconRotation: -math.pi / 2,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.2),
      ),
      GridItemInfo(
        title: "Berat Badan",
        value: "8.0",
        unit: "kg",
        statusText: "Normal",
        iconData: Icons.scale_outlined,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.2),
      ),
      GridItemInfo(
        title: "Z-Score",
        value: "0.025",
        unit: "%",
        statusText: "Normal",
        iconData: Icons.functions,
        iconRotation: -math.pi / 2,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.6),
      ),
      GridItemInfo(
        title: "Status",
        value: "Meningkat",
        unit: "",
        statusText: "", // Tidak ada teks status tambahan di bawah
        iconData: Icons.leaderboard,
        iconColor: const Color(0xff563C81),
        statusValueIcon: Icons.moving_sharp,
        statusValueIconColor: const Color(0xff06D001),
        backgroundColor: AppColors.primary10.withOpacity(0.2),
      ),
    ];

  @override
  void onInit() {
    super.onInit();
  }

}
