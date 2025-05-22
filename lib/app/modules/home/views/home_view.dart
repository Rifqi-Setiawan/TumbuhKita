import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 26.w, left: 26.w, top: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  Spacer(),
                  Icon(Icons.notifications_outlined, size: 25.sp),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
