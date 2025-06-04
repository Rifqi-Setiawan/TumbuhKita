import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/detail_anak_profile.dart/detail_anak_profile_item.dart';

class CustomCardAnak extends StatelessWidget {
  final String photoPath;
  final String name;
  final String genderAndAge;
  final String birthDate;
  final String lastCheckup;
  final String weight;
  final String height;

  const CustomCardAnak({
    super.key,
    required this.photoPath,
    required this.name,
    required this.genderAndAge,
    required this.birthDate,
    required this.lastCheckup,
    required this.weight,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.25.w,
              vertical: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 22.5,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: AssetImage(photoPath),
                ),
                SizedBox(width: 20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: AppTextStyles.body2Semibold),
                    Text(
                      genderAndAge,
                      style: AppTextStyles.body3Regular.copyWith(
                        color: AppColors.neutral70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: const Color(0xFFE1E1E1), thickness: 1, height: 1),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.25.w, vertical: 13.h),
            child: Row(
              children: [
                Expanded(
                  child: DetailAnakProfileItem(
                    icon: Icons.bedroom_baby,
                    label: "Tanggal Lahir",
                    value: birthDate,
                  ),
                ),
                Expanded(
                  child: DetailAnakProfileItem(
                    icon: Icons.baby_changing_station_outlined,
                    label: "Pemeriksaan Terakhir",
                    value: lastCheckup,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.25.w, vertical: 13.h),
            child: Row(
              children: [
                Expanded(
                  child: DetailAnakProfileItem(
                    icon: Icons.bedroom_baby,
                    label: "Berat Badan",
                    value: weight,
                  ),
                ),
                Expanded(
                  child: DetailAnakProfileItem(
                    icon: Icons.baby_changing_station_outlined,
                    label: "Tinggi Badan",
                    value: height,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}