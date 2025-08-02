import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class ForumQuestionCard extends StatefulWidget {
  final String question;
  final VoidCallback? onTap;

  const ForumQuestionCard({super.key, required this.question, this.onTap});

  @override
  State<ForumQuestionCard> createState() => _ForumQuestionCardState();
}

class _ForumQuestionCardState extends State<ForumQuestionCard>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;
  late Animation<double> _rotationAnimation;
  final String dummyAnswer = "Untuk mengatasi anak yang sering menolak makan sayur, Anda bisa mencoba beberapa strategi berikut:\n\n1. Buat sayuran menjadi menarik dengan memotongnya dalam bentuk yang lucu\n2. Campurkan sayuran dengan makanan favorit anak\n3. Libatkan anak dalam proses memasak\n4. Berikan contoh dengan makan sayuran di depan anak\n5. Jangan memaksa, tetapi terus tawarkan dengan sabar\n\nIngat bahwa dibutuhkan waktu dan kesabaran untuk mengubah kebiasaan makan anak.";
  final String doctorName = "Dr. Sarah Wijaya, Sp.A";

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    );
    
    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
    
    if (isExpanded) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    
    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question,
                  style: AppTextStyles.body3Bold.copyWith(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: toggleExpansion,
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary10,
                    shape: BoxShape.circle,
                  ),
                  child: AnimatedBuilder(
                    animation: _rotationAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _rotationAnimation.value * 3.14159,
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: const Color(0xFF2C0B61),
                          size: 28.sp,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: const Color(0x1A000000),
            thickness: 1,
            height: 24,
          ),
          SizeTransition(
            sizeFactor: _expandAnimation,
            axisAlignment: -1.0,
            child: FadeTransition(
              opacity: _expandAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundColor: AppColors.secondary50,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18.sp,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        doctorName,
                        style: AppTextStyles.body3Bold.copyWith(
                          color: AppColors.secondary50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    dummyAnswer,
                    style: AppTextStyles.body3Regular.copyWith(
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
