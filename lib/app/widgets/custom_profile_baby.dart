import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class CustomProfileBaby extends StatelessWidget {
  final String profileImagePath;
  final String crownImagePath; 
  final double avatarSize;
  final double crownSize;
  final double crownRotationDegrees;
  final Offset crownPositionOffset;

  const CustomProfileBaby({
    super.key,
    required this.profileImagePath,
    this.crownImagePath = "assets/images/crown.png", 
    this.avatarSize = 150.0,
    this.crownSize = 50.0,
    this.crownRotationDegrees = -30.0,
    this.crownPositionOffset = const Offset(20, -28),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, 
      alignment: Alignment.center, 
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize / 2 * 1.r),
          child: SizedBox(
            height: avatarSize.h,
            width: avatarSize.w,
            child: Image.asset(
              profileImagePath, 
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    size: avatarSize * 0.6,
                    color: Colors.grey[700],
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: crownPositionOffset.dy.h,  
          left: crownPositionOffset.dx.w,  
          child: Transform.rotate(
            angle: crownRotationDegrees * (math.pi / 180), 
            child: Image.asset(
              crownImagePath, 
              fit: BoxFit.contain, 
              height: crownSize.h,
              width: crownSize.w,
              errorBuilder: (context, error, stackTrace) {
                return SizedBox.shrink();
              },
            ),
          ),
        ),
      ],
    );
  }
}