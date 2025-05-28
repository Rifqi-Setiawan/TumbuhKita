import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'dart:math' as math;

class CustomArtikelCard extends StatelessWidget {
  const CustomArtikelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset("assets/images/artikel.png"),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sukses ASI Eksklusif dengan Tingkatkan Bonding \ndengan Metode PMK",
                style: AppTextStyles.caption1Bold,
              ),
              Transform.rotate(
                angle: 90 * (math.pi / 180),
                child: Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
