import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

import '../controllers/add_pertanyaan_forum_orang_tua_controller.dart';

class AddPertanyaanForumOrangTuaView
    extends GetView<AddPertanyaanForumOrangTuaController> {
  const AddPertanyaanForumOrangTuaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F0FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F0FF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Color(0xff1C1B1F), size: 32.sp),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Buat Pertanyaan",
          style: AppTextStyles.heading7Bold.copyWith(
            color: AppColors.primary70,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 24.h),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 35.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daftar Pertanyaan",
                  style: AppTextStyles.body2Bold.copyWith(color: Colors.black),
                ),
                SizedBox(height: 19.h),
                Text("Anak", style: AppTextStyles.body3Medium),
                SizedBox(height: 7.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.neutral70),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: null,
                      hint: Text(
                        "Pilih Anak",
                        style: AppTextStyles.body2Regular,
                      ),
                      items: [],
                      onChanged: (value) {},
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text("Kategori", style: AppTextStyles.body2Regular),
                SizedBox(height: 7.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.neutral70),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: null,
                      hint: Text(
                        "Pilih Kategori",
                        style: AppTextStyles.body2Regular,
                      ),
                      items: [],
                      onChanged: (value) {},
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text("Judul Pertanyaan", style: AppTextStyles.body2Regular),
                SizedBox(height: 7.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText:
                        "Contoh: Anak saya susah makan sayur, apa yang harus saya lakukan?",
                    hintStyle: AppTextStyles.body2Regular.copyWith(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: AppColors.neutral70),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: AppColors.neutral70),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 12.h,
                    ),
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 16.h),
                Text("Detail Pertanyaan", style: AppTextStyles.body2Regular),
                SizedBox(height: 7.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText:
                        "Jelaskan pertanyaan Anda secara detail untuk mendapatkan jawaban yang lebih akurat",
                    hintStyle: AppTextStyles.body2Regular.copyWith(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: AppColors.neutral70),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: AppColors.neutral70),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: AppColors.neutral70),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: AppColors.neutral70),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 12.h,
                    ),
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.back(),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.error70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 9.5.h),
                        ),
                        child: Text(
                          "Batal",
                          style: AppTextStyles.body2Semibold.copyWith(
                            color: AppColors.error70,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 9.5.h, horizontal: 14.5.w),
                        ),
                        child: Text(
                          "Kirim Pertanyaan",
                          style: AppTextStyles.body2Semibold.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
