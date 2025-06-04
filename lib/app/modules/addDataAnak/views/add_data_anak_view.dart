import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_button_profile.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_input_profile_data.dart';

import '../controllers/add_data_anak_controller.dart';

class AddDataAnakView extends GetView<AddDataAnakController> {
  const AddDataAnakView({super.key});
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
          "Tambah Data Anak",
          style: AppTextStyles.heading5Bold.copyWith(
            color: AppColors.primary70,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              CustomInputProfileData(
                label: "Nama Ibu",
                hintText: "Masukkan nama Ibu",
              ),
              SizedBox(height: 10.h),
              CustomInputProfileData(
                label: "Nama Ayah",
                hintText: "Masukkan nama Ayah",
              ),
              SizedBox(height: 10.h),
              CustomInputProfileData(
                label: "Nama Anak",
                hintText: "Masukkan nama Anak",
              ),
              SizedBox(height: 10.h),
              Text("Jenis Kelamin", style: AppTextStyles.body2Semibold),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 165.w,
                    height: 119.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70, 
                          child: Image.asset(
                            "assets/images/ikonBoy.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text("Laki-Laki", style: AppTextStyles.body3Semibold),
                      ],
                    ),
                  ),
                  Container(
                    width: 165.w,
                    height: 119.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70, 
                          child: Image.asset(
                            "assets/images/stepfoot.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text("Perempuan", style: AppTextStyles.body3Semibold),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CustomInputProfileData(
                label: "Tinggi Badan (cm)",
                hintText: "Masukkan tinggi badan anak",
              ),
              SizedBox(height: 10.h),
              CustomInputProfileData(
                label: "Berat Badan (kg)",
                hintText: "Masukkan berat badan anak",
              ),
              SizedBox(height: 10.h),
              CustomInputProfileData(
                label: "Lingkar Kepala (cm)",
                hintText: "Masukkan nama lengkap anak",
              ),
              SizedBox(height: 17.h),
              CustomButtonProfile(label: "Simpan", onPressed: (){},)
            ],
          ),
        ),
      ),
    );
  }
}
