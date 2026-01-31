import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_routes.dart';
import 'package:e_commerce/core/constants/app_strings.dart';
import 'package:e_commerce/features/auth/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/view/auth_viwe.dart';
import 'package:e_commerce/features/home/view/home_view.dart';
import 'package:e_commerce/features/splash/view/splash_view.dart';
import 'package:e_commerce/features/welcome/view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), 
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.primary,
            ),
            scaffoldBackgroundColor: AppColors.background,
          ),
          initialRoute: AppRoutes.splash,
          routes: {
            AppRoutes.splash: (context) => const SplashView(),
            AppRoutes.welcome: (context) => const WelcomeView(),
            AuthView.routeName: (context) =>  AuthView(),
              AppRoutes.home: (context) => const HomeView(),
          },
        );
      },
    );
  }
}
