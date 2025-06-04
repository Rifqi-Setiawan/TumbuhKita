import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/detail_anak_profile.dart/custom_card_anak.dart';
import 'package:tumbuh_kita/app/widgets/cards/detail_anak_profile.dart/detail_anak_profile_item.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
              CustomProfileData(
                label: "Nama Lengkap",
                initialValue: "Rifqiiii",
              ),
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
              SizedBox(height: 5.h,),
              CustomCardAnak(
                photoPath: "assets/images/bayi2.jpg",
                name: "Nadhira",
                genderAndAge: "Laki-laki, 2 tahun 3 bulan",
                birthDate: "12 Desember 2020",
                lastCheckup: "10 April 2025",
                weight: "12.5 kg",
                height: "89 cm",
              ),
              CustomCardAnak(
                photoPath: "assets/images/bayi2.jpg",
                name: "Nadhira",
                genderAndAge: "Laki-laki, 2 tahun 3 bulan",
                birthDate: "12 Desember 2020",
                lastCheckup: "10 April 2025",
                weight: "12.5 kg",
                height: "89 cm",
              ),
              customb
            ],
          ),
        ),
      ),
    );
  }
}
