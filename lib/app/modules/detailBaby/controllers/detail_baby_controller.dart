import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:tumbuh_kita/app/core/helpers/role_storage_helper.dart';
class DetailBabyController extends GetxController {
  String? role = "";
  final RxList<FlSpot> weightDataPoints = <FlSpot>[
    FlSpot(1, 14),
    FlSpot(2, 22), 
    FlSpot(3, 22),
    FlSpot(4, 23),
    FlSpot(5, 32),
    FlSpot(6, 25),
    FlSpot(7, 25),
    FlSpot(8, 38),
    FlSpot(9, 35),
    FlSpot(10, 34),
    FlSpot(11, 34),
    FlSpot(12, 34),
    FlSpot(13, 35),
    FlSpot(14, 45),
    FlSpot(15, 58),
    FlSpot(16, 59),
  ].obs;
  final Color lineChartColor = const Color(0xFF5036D5); 
  final Color lineChartBelowColor = const Color(0xFFE0D9FF);
  final Color dotColor = const Color(0xFF5036D5); 
  final Color dotBorderColor = Colors.white; 
  var activeChartType = 'beratBadan'.obs;
  List<FlSpot> getSpotsForActiveChart() {
    switch (activeChartType.value) {
      case 'beratBadan':
        return weightDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
      default:
        return weightDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
    }
  }
  void changeActiveChartType(String type) {
    activeChartType.value = type;
    update();
  }
  double get maxYValue {
    if (getSpotsForActiveChart().isEmpty) return 100; 
    return getSpotsForActiveChart().map((spot) => spot.y).reduce(math.max) + 10; 
  }
  double get maxXValue {
     if (getSpotsForActiveChart().isEmpty) return 16;
    return getSpotsForActiveChart().map((spot) => spot.x).reduce(math.max);
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _setupNavigationForRole();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _setupNavigationForRole() async {
    role = RoleStorageHelper.getRole();
    print("Current Role: $role");
  }
}
