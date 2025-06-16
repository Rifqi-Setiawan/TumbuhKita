import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomAddButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  const CustomAddButton({
    super.key,
    this.onPressed,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8.r),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: AppColors.primary90,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.white, width: 0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                  0.25,
                ), 
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, 1),
              ),
            ],
          ),

          child: Center(child: Icon(Icons.add, color: Colors.white, size: 18.sp)),
        ),
      ),
    );
  }
}
