import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_statistik_forum_tenagaKesehatan.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_pertanyaan_statistik_tenagaKesehatan.dart';

import '../controllers/statistik_tenaga_kesehatan_controller.dart';

class StatistikTenagaKesehatanView
    extends GetView<StatistikTenagaKesehatanController> {
  const StatistikTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    "Statistik Forum",
                    style: AppTextStyles.heading7SemiBold.copyWith(
                      color: AppColors.secondary50,
                    ),
                  ),
                ),
                SizedBox(height: 45.h),
                CustomStatistikForumTenagaKesehatan(
                  totalPertanyaan: 2,
                  belumDijawab: 3,
                  sudahDijawab: 2,
                ),
                SizedBox(height: 17.h),
                Text(
                  "Kategori Populer",
                  style: AppTextStyles.heading7SemiBold.copyWith(
                    color: AppColors.secondary50,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomStatistikForumTenagaKesehatan(
                  totalPertanyaan: 2,
                  belumDijawab: 3,
                  sudahDijawab: 2,
                ),
                SizedBox(height: 17.h),
                Text(
                  "Belum Dijawab",
                  style: AppTextStyles.heading7SemiBold.copyWith(
                    color: AppColors.secondary50,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomPertanyaanStatistikTenagaKesehatan(
                  pertanyaan: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                  onTap: () {
                    print("Jawab pertanyaan");
                  },
                ),
                CustomPertanyaanStatistikTenagaKesehatan(
                  pertanyaan: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                  onTap: () {
                    print("Jawab pertanyaan");
                  },
                ),
                CustomPertanyaanStatistikTenagaKesehatan(
                  pertanyaan: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                  onTap: () {
                    print("Jawab pertanyaan");
                  },
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
