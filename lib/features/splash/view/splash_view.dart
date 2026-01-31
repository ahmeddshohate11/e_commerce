import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_images.dart';
import 'package:e_commerce/core/constants/app_routes.dart';
import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = AppRoutes.splash;

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // بعد 2 ثانية ينقل للصفحة الرئيسية
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context,AppRoutes.welcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:AppColors.background,
        body: Center(
          child: Image.asset(
            AppImages.splashScreen,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
