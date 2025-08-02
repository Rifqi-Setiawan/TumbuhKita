import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:tumbuh_kita/app/core/helpers/role_storage_helper.dart';
class DetailBabyController extends GetxController {
  TextEditingController tinggiBadanController = TextEditingController();
  TextEditingController beratbadanController = TextEditingController();
  TextEditingController lingkarKepalaController = TextEditingController();
  var role = ''.obs;
  
  // Variable untuk kategori chart yang aktif
  var selectedCategory = 0.obs; // 0: Berat Badan, 1: Tinggi Badan, 2: Lingkar Kepala, 3: Gizi
  
  // Fungsi untuk mengubah kategori yang dipilih
  void changeCategory(int index) {
    selectedCategory.value = index;
  }

  // Data untuk setiap kategori
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

  final RxList<FlSpot> heightDataPoints = <FlSpot>[
    FlSpot(1, 45),
    FlSpot(2, 50), 
    FlSpot(3, 53),
    FlSpot(4, 56),
    FlSpot(5, 59),
    FlSpot(6, 62),
    FlSpot(7, 64),
    FlSpot(8, 67),
    FlSpot(9, 69),
    FlSpot(10, 71),
    FlSpot(11, 73),
    FlSpot(12, 75),
    FlSpot(13, 77),
    FlSpot(14, 79),
    FlSpot(15, 81),
    FlSpot(16, 83),
  ].obs;

  final RxList<FlSpot> headCircumferenceDataPoints = <FlSpot>[
    FlSpot(1, 34),
    FlSpot(2, 36), 
    FlSpot(3, 38),
    FlSpot(4, 39),
    FlSpot(5, 40),
    FlSpot(6, 41),
    FlSpot(7, 42),
    FlSpot(8, 43),
    FlSpot(9, 44),
    FlSpot(10, 44.5),
    FlSpot(11, 45),
    FlSpot(12, 45.5),
    FlSpot(13, 46),
    FlSpot(14, 46.5),
    FlSpot(15, 47),
    FlSpot(16, 47.5),
  ].obs;

  final RxList<FlSpot> nutritionDataPoints = <FlSpot>[
    FlSpot(1, 85),
    FlSpot(2, 87), 
    FlSpot(3, 88),
    FlSpot(4, 89),
    FlSpot(5, 91),
    FlSpot(6, 88),
    FlSpot(7, 90),
    FlSpot(8, 92),
    FlSpot(9, 89),
    FlSpot(10, 91),
    FlSpot(11, 93),
    FlSpot(12, 90),
    FlSpot(13, 92),
    FlSpot(14, 94),
    FlSpot(15, 95),
    FlSpot(16, 93),
  ].obs;
  final Color lineChartColor = const Color(0xFF5036D5); 
  final Color lineChartBelowColor = const Color(0xFFE0D9FF);
  final Color dotColor = const Color(0xFF5036D5); 
  final Color dotBorderColor = Colors.white; 
  var activeChartType = 'beratBadan'.obs;

  List<FlSpot> getSpotsForActiveChart() {
    switch (selectedCategory.value) {
      case 0: // Berat Badan
        return weightDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
      case 1: // Tinggi Badan
        return heightDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
      case 2: // Lingkar Kepala
        return headCircumferenceDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
      case 3: // Gizi
        return nutritionDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
      default:
        return weightDataPoints.map((point) => FlSpot(point.x, point.y)).toList();
    }
  }

  void changeActiveChartType(String type) {
    activeChartType.value = type;
    update();
  }

  String getCurrentCategoryTitle() {
    switch (selectedCategory.value) {
      case 0:
        return 'Berat Badan (kg)';
      case 1:
        return 'Tinggi Badan (cm)';
      case 2:
        return 'Lingkar Kepala (cm)';
      case 3:
        return 'Status Gizi (%)';
      default:
        return 'Berat Badan (kg)';
    }
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



  void _setupNavigationForRole() {
    role.value = RoleStorageHelper.getRole() ?? '';
    print("Current Role: ${role.value}");
  }

  void saveUpdateDataAnak(){
    Get.back();
  }
}
