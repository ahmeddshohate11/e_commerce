import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_images.dart';
import 'package:e_commerce/core/constants/app_routes.dart';
import 'package:e_commerce/core/constants/app_strings.dart';
import 'package:e_commerce/core/constants/app_text_styles.dart';
import 'package:e_commerce/core/models/positioned_image_model.dart';
import 'package:e_commerce/core/widgets/app_text.dart';
import 'package:e_commerce/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce/core/widgets/header_images_stack.dart';
import 'package:e_commerce/features/auth/view/auth_viwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeView extends StatelessWidget {
  static const String routeName = AppRoutes.welcome;
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            width: double.infinity,
            height: 470.h,
            color: AppColors.primaryLightColor,
            child: ImagesStack(
              height: 470.h,
              backgroundColor: AppColors.primaryLightColor,
              images: [
                PositionedImageModel(
                  imagePath: AppImages.fruitDrop,
                  top: 131,
                  left: 282,
                  width: 50,
                  height: 38,
                ),
                PositionedImageModel(
                  imagePath: AppImages.basket,
                  top: 155,
                  left: 35,
                  width: 301,
                  height: 260,
                ),
                PositionedImageModel(
                  imagePath: AppImages.ellips,
                  top: 423,
                  left: 37,
                  width: 301,
                  height: 12,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: AppStrings.getFreshest,
                style: AppTextStyles.style20Black,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10.h),
              AppText(
                text: AppStrings.welcomeSubtitle,
                style: AppTextStyles.style16Grey,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              SizedBox(height: 80.h),
              
            ],
          ), 
         CustomElevatedButton(
            text: AppStrings.letsGetStarted,
            backgroundColor: AppColors.primaryLightColor,
            onPressed: () {
              Navigator.pushNamed(context, AuthView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
