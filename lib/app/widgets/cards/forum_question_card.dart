import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class ForumQuestionCard extends StatelessWidget {
  final String question;
  final VoidCallback? onTap;

  const ForumQuestionCard({super.key, required this.question, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  question,
                  style: AppTextStyles.body3Bold.copyWith(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary10,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: const Color(0xFF2C0B61),
                    size: 28.sp,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: const Color(0x1A000000), // #0000001A dalam format ARGB
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
