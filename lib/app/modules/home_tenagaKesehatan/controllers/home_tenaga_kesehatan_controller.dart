import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
import 'dart:math' as math;

class HomeTenagaKesehatanController extends GetxController {
 final List<GridItemInfo> dummyGridItems = [
      GridItemInfo(
        title: "Hari ini",
        value: "+50",
        unit: "",
        statusText: "Pertanyaan",
        iconData: Icons.calendar_today_outlined,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.2),
      ),
      GridItemInfo(
        title: "Total",
        value: "80",
        unit: "",
        statusText: "Pertanyaan",
        iconData: Icons.dynamic_feed,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.4),
      ),
      GridItemInfo(
        title: "Belum \nDijawab",
        value: "20",
        unit: "",
        statusText: "Pertanyaan",
        iconData: Icons.mark_chat_unread_outlined,
        iconColor: const Color(0xff563C81),
        backgroundColor: AppColors.primary10.withOpacity(0.6),
      ),
      GridItemInfo(
        title: "Sudah \nDijawab",
        value: "20",
        unit: "",
        statusText: "Pertanyaan", 
        iconData: Icons.mark_chat_read_outlined,
        iconColor: const Color(0xff563C81),
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
