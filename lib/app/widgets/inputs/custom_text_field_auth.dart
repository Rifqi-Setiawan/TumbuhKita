import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomTextFieldAuth extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool enabled;
  final bool isPassword;
  final String label;
  final String hintText;

  const CustomTextFieldAuth({
    super.key,
    required this.controller,
    this.validator,
    this.enabled = true,
    this.isPassword = false,
    required this.label,
    required this.hintText,
  });

  @override
  State<CustomTextFieldAuth> createState() => _CustomTextFieldAuthState();
}

class _CustomTextFieldAuthState extends State<CustomTextFieldAuth> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 3.h),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.label,
              style: AppTextStyles.body2Semibold.copyWith(
                color: AppColors.neutral90,
              ),
            ),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          enabled: widget.enabled,
          obscureText: widget.isPassword ? _obscureText : false,
          keyboardType:
              widget.isPassword
                  ? TextInputType.visiblePassword
                  : TextInputType.text,
          style: AppTextStyles.body2Regular.copyWith(
            color: AppColors.neutral90,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppTextStyles.body2Medium.copyWith(
              color: AppColors.neutral50,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 11,
              horizontal: 14,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: AppColors.primary90.withOpacity(0.3),
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: AppColors.primary90.withOpacity(0.3),
                width: 2,
              ),
            ),
            suffixIcon:
                widget.isPassword
                    ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.neutral50,
                      ),
                      onPressed: () {
                        () => _obscureText = !_obscureText;
                      },
                    )
                    : null,
          ),
        ),
      ],
    );
  }
}
