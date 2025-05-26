import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/widgets/custom_profile_baby.dart';
import 'dart:math' as math;

import '../controllers/detail_baby_controller.dart';

class DetailBabyView extends GetView<DetailBabyController> {
  const DetailBabyView({super.key});
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            "Nadhira Salsabila Vanka",
            style: AppTextStyles.body1Bold.copyWith(color: Color(0xff2C0B61)),
          ),
          SizedBox(height: 104.h),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.sp), topRight: Radius.circular(50.sp))
                ),
                child: Text("a"),
              ),
              Center(
                child: CustomProfileBaby(profileImagePath: "assets/images/profileBayi.png")
              ),
            ],
          ),
        ],
      ),
    );
  }
}
