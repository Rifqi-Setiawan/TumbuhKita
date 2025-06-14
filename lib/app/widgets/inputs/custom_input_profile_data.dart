import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';

class CustomInputProfileData extends StatelessWidget {
  final String label;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool enabled;
  final String? hintText;

  const CustomInputProfileData({
    super.key,
    required this.label,
    this.initialValue,
    this.onChanged,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.body2Semibold),
        const SizedBox(height: 7),
        TextFormField(
          controller: controller,
          initialValue: controller == null ? initialValue : null,
          onChanged: onChanged,
          keyboardType: keyboardType,
          enabled: enabled,
          style: AppTextStyles.body2Medium,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 11,
            ),
            hintText: hintText, 
            hintStyle: AppTextStyles.body2Medium.copyWith(
              color: Colors.black.withOpacity(0.3),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
