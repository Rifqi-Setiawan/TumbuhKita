import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_profile_data.dart';
import 'package:tumbuh_kita/app/widgets/profile_akun_widget.dart';

import '../controllers/detail_profile_orang_tua_controller.dart';

class DetailProfileOrangTuaView
    extends GetView<DetailProfileOrangTuaController> {
  const DetailProfileOrangTuaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F0FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F0FF),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.chevron_left, size: 40.sp),
        ),
        title: Text(
          "Akun",
          style: AppTextStyles.heading5Bold.copyWith(
            color: AppColors.primary70,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          children: [
            SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileAkunWidget(
                  label: "Orang tua",
                  photoPath: "assets/images/profileOrangTua.jpg",
                ),
                SizedBox(width: 38.w),
                ProfileAkunWidget(
                  label: "Anak1",
                  photoPath: "assets/images/profileBayi.png",
                  onCameraTap: () {
                    // Implement camera tap functionality here
                  },
                ),
              ],
            ),
            Center(
              child: ProfileAkunWidget(
                label: "Anak 2",
                photoPath: "assets/images/profileBayi.png",
                onCameraTap: () {
                  // Implement camera tap functionality here
                },
              ),
            ),
            SizedBox(height: 14.h),
            CustomProfileData(label: "Nama Lengkap", initialValue: "Rifqiiii"),
            SizedBox(height: 14.h),
            CustomProfileData(
              label: "Nomor Telepon",
              initialValue: "0811111111",
            ),
            SizedBox(height: 14.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Anak Saya", style: AppTextStyles.body3Medium),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.25.w,
                      vertical: 13.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 22.5,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: AssetImage(
                            "assets/images/bayi2.jpg",
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nadhira", style: AppTextStyles.body2Semibold),
                            Text(
                              "Laki-laki, 2 tahun 3 bulan",
                              style: AppTextStyles.body3Regular.copyWith(
                                color: AppColors.neutral70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Divider(color: Color(0xFFE1E1E1), thickness: 1, height: 1),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
