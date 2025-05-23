import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
// AppColors mungkin tidak lagi dibutuhkan di sini jika sudah dihandle BabyStatusCard
// import 'package:tumbuh_kita/app/core/theme/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
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
            SizedBox(height: 51.h),
            Row(
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
          ],
        ),
      ),
    );
  }
}
