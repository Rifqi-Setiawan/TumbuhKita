import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_add_button.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_status_card.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_daftar_anak_card.dart';

import '../controllers/home_posyandu_controller.dart';

class HomePosyanduView extends GetView<HomePosyanduController> {
  const HomePosyanduView({super.key});
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
                        "Selamat pagi, \nPosyandu Bojonogsoang",
                        style: AppTextStyles.body3Semibold,
                      ),
                      const Spacer(),
                      Icon(Icons.notifications_outlined, size: 25.sp),
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                CustomBabyStatusCard(
                  role: 'posyandu',
                  gridItemsData: controller.dummyGridItems,
                ),
                SizedBox(height: 27.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kegiatan", style: AppTextStyles.heading7SemiBold),
                    CustomAddButton(
                      onPressed: () => {
                        Get.toNamed(Routes.ADD_KEGIATAN_POSYANDU),
                      },
                      padding: EdgeInsets.all(4.sp),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 25,
                        ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jadwal Vaksin",
                              style: AppTextStyles.body3Medium,
                            ),
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
                SizedBox(height: 27.h),
                Text("Daftar Anak", style: AppTextStyles.heading7SemiBold),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Cari data anak",
                            hintStyle: AppTextStyles.caption1Semibold.copyWith(
                              color: Colors.black.withOpacity(0.2),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w,
                              vertical: 8.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomAddButton(
                      onPressed: () => {
                        Get.toNamed(Routes.ADD_DATA_ANAK),
                      },
                      padding: EdgeInsets.all(4.sp),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                CustomDaftarAnakCard(
                  imageUrl: 'assets/images/bayi2.jpg',
                  name: 'Nadhira Salsabila Vanka',
                  description: 'Usia 18 Bulan',
                  onTap: () => Get.toNamed(Routes.DETAIL_BABY),
                ),
                SizedBox(height: 15.h),
                CustomDaftarAnakCard(
                  imageUrl: 'assets/images/profileBayi.png',
                  name: 'Nadhira Salsabila Vanka',
                  description: 'Usia 23 Bulan',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
