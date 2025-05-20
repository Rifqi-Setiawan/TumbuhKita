import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary70, 
        foregroundColor: Colors.white, 
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        textStyle: AppTextStyles.body1SemiBold,
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}