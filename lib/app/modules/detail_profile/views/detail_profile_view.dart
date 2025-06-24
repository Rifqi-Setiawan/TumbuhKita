import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_button_profile.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_input_profile_data.dart';
import 'package:tumbuh_kita/app/widgets/profile_akun_widget.dart';

import '../controllers/detail_profile_controller.dart';

class DetailProfileView extends GetView<DetailProfileController> {
  const DetailProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F0FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F0FF),
        elevation: 0,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 29),
              Center(
                child: ProfileAkunWidget(
                  label: "Orang tua",
                  photoPath: "assets/images/profileOrangTua.jpg",
                  onCameraTap: () {},
                ),
              ),
              SizedBox(height: 16.h),
              CustomInputProfileData(
                label: "Nama Lengkap",
                initialValue: "Rifqiiii",
              ),
              SizedBox(height: 14.h),
              CustomInputProfileData(
                label: "Nama Lengkap",
                initialValue: "Rifqiiii",
              ),
              SizedBox(height: 24.h),
              CustomButtonProfile(label: "Perbarui", onPressed: () {}),
              SizedBox(height: 14.h),
              CustomButtonProfile(
                label: "Keluar dari Akun",
                onPressed: () => Get.offAllNamed(Routes.LOGIN),
              ),
              SizedBox(height: 45.h),
            ],
          ),
        ),
      ),
    );
  }
}
