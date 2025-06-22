import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/helpers/role_storage_helper.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_button_auth.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_role_auth.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_text_field_auth.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffF4F0FF),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Masuk",
                    style: AppTextStyles.heading5Bold.copyWith(
                      color: AppColors.primary90,
                    ),
                  ),
                ),
                SizedBox(height: 109),
                Text(
                  "Masuk ke Akun Anda",
                  style: AppTextStyles.body1SemiBold.copyWith(
                    color: AppColors.neutral90,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Pilih peran dan masukan kredensial Anda \nuntuk melanjutkan",
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
                  // pemilihan role
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
                          role: 'Tenaga Kesehatan',
                          icon: Icons.manage_accounts,
                          isSelected:
                              controller.selectedRole.value == 'Tenaga Kesehatan',
                          onTap: () => controller.selectRole('Tenaga Kesehatan'),
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
                  label: "Kata Sandi",
                  hintText: "Masukkan kata sandi",
                ),
                SizedBox(height: 15.sp),
                CustomButtonAuth(text: "Masuk", onPressed: () async {
                  if (controller.selectedRole.value.isEmpty) {
                    Get.snackbar('Pilih Peran', 'Silakan pilih peran terlebih dahulu');
                    return;
                  }
                  await RoleStorageHelper.saveRole(controller.selectedRole.value);
                  Get.offAllNamed(Routes.TRANSITION);
                }),
                SizedBox(
                  height: 10.sp,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Belum memiliki akun? ',
                    style: AppTextStyles.body3Regular.copyWith(
                      color: AppColors.neutral90,
                    ),
                    children: [
                      TextSpan(
                        text: 'Daftar',
                        style: AppTextStyles.body3Regular.copyWith(
                          color: AppColors.primary90,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes.REGISTER);
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
