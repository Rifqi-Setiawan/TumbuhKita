import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

class DetailAnakProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const DetailAnakProfileItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35.w,
          height: 35.h,
          decoration: const BoxDecoration(
            color: Color(0xFFF1E9FF),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Color(0xFF7158B3), size: 24),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: AppTextStyles.body3Regular),
            const SizedBox(height: 2),
            Text(value, style: AppTextStyles.body2Medium),
          ],
        ),
      ],
    );
  }
}
