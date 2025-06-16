import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
import 'dart:math' as math;

class HomePosyanduController extends GetxController {
  //TODO: Implement HomePosyanduController
  final List<GridItemInfo> dummyGridItems = [
      GridItemInfo(
        title: "Jumlah Anak",
        value: "400",
        unit: "",
        statusText: "Anak",
        iconData: Icons.child_care_outlined,
        iconRotation: -math.pi / 2,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.2),
      ),
      GridItemInfo(
        title: "Status",
        value: "Ideal",
        unit: "",
        statusText: "Normal",
        iconData: Icons.leaderboard_outlined,
        statusValueIcon: Icons.sentiment_satisfied,
        statusValueIconColor: const Color(0xff06D001),
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.4),
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
        title: "Kategori",
        value: "Meningkat",
        unit: "",
        statusText: "", 
        iconData: Icons.stacked_line_chart,
        iconColor: const Color(0xff563C81),
        statusValueIcon: Icons.moving_sharp,
        statusValueIconColor: const Color(0xff06D001),
        backgroundColor: AppColors.primary10.withOpacity(0.8),
      ),
    ];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
