import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_button_auth.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_text_field_auth.dart';

class UpdateDataFormAnakPosyandu extends StatelessWidget {
  final TextEditingController tinggiController;
  final TextEditingController beratController;
  final TextEditingController lingkarKepalaController;
  final VoidCallback onSave;
  const UpdateDataFormAnakPosyandu({super.key,
    required this.tinggiController,
    required this.beratController,
    required this.lingkarKepalaController,
    required this.onSave,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Perbarui Data Anak",
              style: AppTextStyles.heading7Bold,
            ),
          ),
          SizedBox(height: 24.h),
          CustomTextFieldAuth(
            label: "Tinggi Badan (cm)",
            hintText: "Masukkan tinggi badan anak",
            controller: tinggiController,
          ),
          SizedBox(height: 16.h),
          CustomTextFieldAuth(
            label: "Berat Badan (kg)",
            hintText: "Masukkan berat badan anak",
            controller: beratController,
          ),
          SizedBox(height: 16.h),
          CustomTextFieldAuth(
            label: "Lingkar Kepala (cm)",
            hintText: "Masukkan lingkar kepala anak",
            controller: lingkarKepalaController, 
          ),
          SizedBox(height: 24.h),
          CustomButtonAuth(text: "Simpan", onPressed: onSave),
        ],
      ),
    );
  }
}
