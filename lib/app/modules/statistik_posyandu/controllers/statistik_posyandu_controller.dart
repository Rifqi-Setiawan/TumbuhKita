import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class StatistikPosyanduController extends GetxController {
  var selectedDate = DateTime.now().obs;

  final RxList<FlSpot> weightDataPoints = <FlSpot>[
    FlSpot(1, 14), FlSpot(2, 22), FlSpot(3, 22), FlSpot(4, 23),
    FlSpot(5, 32), FlSpot(6, 25), FlSpot(7, 25), FlSpot(8, 38),
    FlSpot(9, 35), FlSpot(10, 34), FlSpot(11, 34), FlSpot(12, 34),
    FlSpot(13, 35), FlSpot(14, 45), FlSpot(15, 58), FlSpot(16, 59),
  ].obs;

  // GANTI NAMA METHOD DI SINI
  void openMonthPicker(BuildContext context) async {
    final pickedDate = await showMonthPicker(
      context: context,
      initialDate: selectedDate.value,
    );

    if (pickedDate != null) {
      selectedDate.value = pickedDate;
    }
  }
}