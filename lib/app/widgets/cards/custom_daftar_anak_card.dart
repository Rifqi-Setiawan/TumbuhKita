import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

class CustomDaftarAnakCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final VoidCallback? onTap; 

  const CustomDaftarAnakCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell( 
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.r), 
        child: Container(
          padding: EdgeInsets.only(right: 21.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08), 
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r), bottomLeft: Radius.circular(15.r), topRight: Radius.circular(15.r) ),
                child: Image.asset( 
                  imageUrl,
                  width: 88.w,
                  height: 88.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16.w), 
              Expanded( 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: AppTextStyles.body2Semibold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      description,
                      style: AppTextStyles.caption2Regular,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w), 
              Icon(
                Icons.chevron_right,
                color: Colors.black,
                size: 40.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}