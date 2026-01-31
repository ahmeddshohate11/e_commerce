import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/app_routes.dart';
import 'package:e_commerce/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  static
  const String routeName = AppRoutes.home;
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          IconButton(onPressed: (){}, icon:Image.asset(AppIcons.orderListRounded)),
          SizedBox(height: 20.h,),
          
          Column(
            children: [
              IconButton(onPressed: (){}, icon:Image.asset(AppIcons.shoppingbasket)),
            Text(AppStrings.mybasket, style: TextStyle(fontSize: 20.sp),)
            ],
          )

        ],
      )
    );
  }
}