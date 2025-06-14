import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

import 'package:tumbuh_kita/app/routes/app_pages.dart';

class GridItemInfo {
  final String title;
  final String value;
  final String unit;
  final String statusText;
  final IconData iconData;
  final double? iconRotation;
  final Color iconColor;
  final Color backgroundColor;
  final IconData? statusValueIcon;
  final Color? statusValueIconColor;

  const GridItemInfo({
    required this.title,
    required this.value,
    required this.unit,
    required this.statusText,
    required this.iconData,
    this.iconRotation,
    required this.iconColor,
    required this.backgroundColor,
    this.statusValueIcon,
    this.statusValueIconColor,
  });
}

class CustomBabyStatusCard extends StatelessWidget {
  final String babyName;
  final String babyAge;
  final String babyProfileImagePath;
  final String stepFootImagePath;
  final List<GridItemInfo> gridItemsData;

  const CustomBabyStatusCard({
    super.key,
    required this.babyName,
    required this.babyAge,
    required this.babyProfileImagePath,
    required this.stepFootImagePath,
    required this.gridItemsData,
  });

  Widget _buildGridItem({required GridItemInfo itemInfo}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: itemInfo.backgroundColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemInfo.title, style: AppTextStyles.body2Medium),
              if (itemInfo.iconRotation != null)
                Transform.rotate(
                    angle: itemInfo.iconRotation!,
                    child: Icon(itemInfo.iconData,
                        color: itemInfo.iconColor, size: 20.sp))
              else
                Icon(itemInfo.iconData,
                    color: itemInfo.iconColor, size: 20.sp),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Flexible(
                child: Text(
                  itemInfo.value,
                  style: itemInfo.title == "Status"
                      ? AppTextStyles.heading8SemiBold
                      : AppTextStyles.heading4SemiBold,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              if (itemInfo.unit.isNotEmpty) SizedBox(width: 4.w),
              if (itemInfo.unit.isNotEmpty)
                Text(itemInfo.unit, style: AppTextStyles.body2Medium),
              if (itemInfo.statusValueIcon != null) SizedBox(width: 2.w),
              if (itemInfo.statusValueIcon != null)
                Icon(
                  itemInfo.statusValueIcon!,
                  color: itemInfo.statusValueIconColor,
                  size: 16.sp,
                ),
            ],
          ),
          if (itemInfo.statusText.isNotEmpty)
            Center(
                child:
                    Text(itemInfo.statusText, style: AppTextStyles.body2Bold)),
          if (itemInfo.statusText.isEmpty &&
              (itemInfo.value.isNotEmpty ||
                  itemInfo.unit.isNotEmpty ||
                  itemInfo.statusValueIcon != null))
            const SizedBox(height: 1),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(1, 2),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              right: 22.w,
              left: 22.w,
              top: 20.h,
              bottom: 15.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.toNamed(Routes.DETAIL_BABY);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: SizedBox(
                          height: 45.h,
                          width: 45.w,
                          child: Image.asset(
                            babyProfileImagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            babyName,
                            style: AppTextStyles.body2Bold,
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            babyAge,
                            style: AppTextStyles.body3Regular,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Icon(Icons.chevron_right, size: 45.sp),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0.w,
                  mainAxisSpacing: 10.0.h,
                  childAspectRatio: 1.2,
                  children: gridItemsData.map((itemInfo) {
                    return _buildGridItem(itemInfo: itemInfo);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -24.h,
          right: 14.w,
          child: SizedBox(
            height: 55.h,
            width: 55.w,
            child: Image.asset(
              stepFootImagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}