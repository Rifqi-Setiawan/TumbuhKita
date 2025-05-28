import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class DetailBabyChartComponents extends StatelessWidget {
  final List<FlSpot> spots;
  final double minX;
  final double maxX;
  final double minY;
  final double maxY;
  DetailBabyChartComponents({
    super.key,
    required this.spots,
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 4.0.r,
                    color: Colors.white,
                    strokeColor: AppColors.secondary50,
                    strokeWidth: 1.0.sp,
                  );
                },
              ),
              color: AppColors.secondary50,
              barWidth: 1,
              belowBarData: BarAreaData(
                show: true,
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(137, 121, 255, 0.3),
                    Color.fromRGBO(137, 121, 255, 0.05),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
          minX: minX,
          maxX: maxX,
          minY: minY,
          maxY: maxY,
          gridData: FlGridData(show: true, drawHorizontalLine: true),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 33.w),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(color: AppColors.secondary50, width: 1),
              left: BorderSide.none,
              right: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
