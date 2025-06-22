import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
import 'package:tumbuh_kita/app/widgets/cards/forum_question_card.dart';

import '../controllers/home_tenaga_kesehatan_controller.dart';

class HomeTenagaKesehatanView extends GetView<HomeTenagaKesehatanController> {
  const HomeTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              right: 26.w,
              left: 26.w,
              top: 50.h,
              bottom: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.DETAIL_PROFILE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 45.h,
                          width: 45.w,
                          child: Image.asset(
                            'assets/images/profileOrangTua.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "Selamat pagi, \nTenaga Kesehatan",
                        style: AppTextStyles.body3Semibold,
                      ),
                      const Spacer(),
                      Icon(Icons.notifications_outlined, size: 25.sp),
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                CustomBabyStatusCard(
                  role: 'tenaga kesehatan',
                  gridItemsData: controller.dummyGridItems,
                ),
                SizedBox(height: 27.h),
                Text(
                  "Pertanyaan Terbaru",
                  style: AppTextStyles.heading7SemiBold.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                ForumQuestionCard(
                  question:
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                ),
                ForumQuestionCard(
                  question:
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                ),
                ForumQuestionCard(
                  question:
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                ),
                ForumQuestionCard(
                  question:
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                ),
                ForumQuestionCard(
                  question:
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                ),
                ForumQuestionCard(
                  question:
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
