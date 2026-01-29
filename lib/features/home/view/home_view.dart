import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_images.dart';
import 'package:e_commerce/core/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  static const String routeName = AppRoutes.home;
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 470.h, 
        color: AppColors.primaryLightColor,
        child: Stack(
          children: [
            Positioned(
              top: 131.h,
              left: 282.w,
              child: Image.asset(
                AppImages.fruitDrop,
                width: 50.w,
                height: 38.h,
              ),
            ),
            Positioned(
              top: 155.h,
              left: 35.w,
              child: Image.asset(
                AppImages.basket,
                width: 301.w,
                height: 260.h,
              ),
            ),
            Positioned(
            top: 423.h ,  
              left: 37.w,
              child: Image.asset(
                AppImages.ellips,
                width: 301.w,
                height: 12.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
