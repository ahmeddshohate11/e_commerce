import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_strings.dart';
import 'package:e_commerce/core/constants/app_text_styles.dart';
import 'package:e_commerce/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.backgroundColor,
     this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final VoidCallback? onPressed ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 16.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: AppText(
        text: text,
        style: AppTextStyles.style20White,
      ),
    );
  }
}
