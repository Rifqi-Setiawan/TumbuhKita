import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_button_auth.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_role_auth.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_text_field_auth.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffF4F0FF),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Daftar",
                    style: AppTextStyles.heading5Bold.copyWith(
                      color: AppColors.primary90,
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  "Buat Akun Baru",
                  style: AppTextStyles.body1SemiBold.copyWith(
                    color: AppColors.neutral90,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Pilih peran dan masukkan kredensial Anda \nuntuk melanjutkan",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.caption1Regular.copyWith(
                    color: AppColors.neutral70,
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pilih Peran",
                    style: AppTextStyles.body2Semibold.copyWith(
                      color: AppColors.neutral90,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  padding: EdgeInsets.all(11.sp),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Obx(
                    () => Row(
                      children: [
                        CustomRoleAuth(
                          role: 'Orang Tua',
                          icon: Icons.favorite_border_outlined,
                          isSelected:
                              controller.selectedRole.value == 'Orang Tua',
                          onTap: () => controller.selectRole('Orang Tua'),
                        ),
                        CustomRoleAuth(
                          role: 'Posyandu',
                          icon: FontAwesomeIcons.userGroup,
                          isSelected: controller.selectedRole.value == 'Posyandu',
                          onTap: () => controller.selectRole('Posyandu'),
                        ),
                        CustomRoleAuth(
                          role: 'Kesehatan',
                          icon: Icons.manage_accounts,
                          isSelected:
                              controller.selectedRole.value == 'Kesehatan',
                          onTap: () => controller.selectRole('Kesehatan'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.sp),
                CustomTextFieldAuth(
                  controller: controller.emailController,
                  label: "Email",
                  hintText: "Masukkan email",
                ),
                SizedBox(height: 15),
                CustomTextFieldAuth(
                  controller: controller.passwordController,
                  label: "Nama Lengkap",
                  hintText: "Masukkan nama lengkap",
                ),
                SizedBox(height: 15),
                CustomTextFieldAuth(
                  controller: controller.passwordController,
                  label: "Nomor Telepon",
                  hintText: "Masukkan nomor telepon",
                ),
                SizedBox(height: 15),
                CustomTextFieldAuth(
                  controller: controller.passwordController,
                  label: "Kata Sandi",
                  hintText: "Masukkan kata sandi",
                ),
                SizedBox(height: 15),
                CustomTextFieldAuth(
                  controller: controller.passwordController,
                  label: "Konfirmasi Kata Sandi",
                  hintText: "Konfirmasi Kata Sandi",
                ),
                SizedBox(height: 15.sp),
                CustomButtonAuth(text: "Daftar", onPressed: () {}),
                SizedBox(height: 10.sp),
                RichText(
                  text: TextSpan(
                    text: 'Sudah memiliki akun?',
                    style: AppTextStyles.body3Regular.copyWith(
                      color: AppColors.neutral90,
                    ),
                    children: [
                      TextSpan(
                        text: 'Masuk',
                        style: AppTextStyles.body3Regular.copyWith(
                          color: AppColors.primary90,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.back();
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
