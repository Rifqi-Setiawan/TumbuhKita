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
        Container(
          height: avatarSize.h, 
          width: avatarSize.w, 
          clipBehavior: Clip.antiAlias, 
          decoration: BoxDecoration(
            shape: BoxShape.circle, 
            color: Colors.grey[200], 
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15), 
                spreadRadius: 2.r, 
                blurRadius: 5.r,   
                offset: Offset(1.w, 3.h), 
              ),
            ],
          ),
          child: Image.asset(
            profileImagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: Icon(
                  Icons.person_outline,
                  size: avatarSize * 0.6,
                  color: Colors.grey[600],
                ),
              );
            },
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
                return const SizedBox.shrink(); 
              },
            ),
          ),
        ),
      ],
    );
  }
}
