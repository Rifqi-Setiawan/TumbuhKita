import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_artikel_card.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
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
                  onTap: () => Get.toNamed(Routes.DETAIL_PROFILE_ORANG_TUA),
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
                        "Selamat pagi, \nRifqi",
                        style: AppTextStyles.body3Semibold,
                      ),
                      const Spacer(),
                      Icon(Icons.notifications_outlined, size: 25.sp),
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                CustomBabyStatusCard(
                  babyName: "Nadhira",
                  babyAge: "8 Bulan",
                  babyProfileImagePath: "assets/images/profileBayi.png",
                  stepFootImagePath: "assets/images/stepfoot.png",
                  gridItemsData: controller.dummyGridItems,
                ),
                SizedBox(height: 27.h),
                Text("Pengingat", style: AppTextStyles.heading7SemiBold),
                SizedBox(height: 5.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(1, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary90,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        child: Column(
                          children: [
                            Text(
                              "NOV \n2025",
                              style: AppTextStyles.body3Semibold.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jadwal Vaksin", style: AppTextStyles.body3Medium),
                            SizedBox(height: 5),
                            Text(
                              "Heptatitis B",
                              style: AppTextStyles.caption1Regular,
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Usia 18 Bulan",
                              style: AppTextStyles.caption1Regular,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text("Artikel", 
                style: AppTextStyles.heading7SemiBold,
                ),
                SizedBox(height: 5.h),
                CustomArtikelCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
