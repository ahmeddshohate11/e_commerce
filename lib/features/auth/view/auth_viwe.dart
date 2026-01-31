import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_images.dart';
import 'package:e_commerce/core/constants/app_strings.dart';
import 'package:e_commerce/core/constants/app_text_styles.dart';
import 'package:e_commerce/core/models/positioned_image_model.dart';
import 'package:e_commerce/core/widgets/app_text.dart';
import 'package:e_commerce/core/widgets/custom_elevated_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/core/widgets/header_images_stack.dart';
import 'package:e_commerce/features/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthView extends StatelessWidget {
  static const String routeName = '/auth';
  final TextEditingController firstNameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Form(
        key: formKey,
        child: Scaffold(
          body: Column(
            children: [
              // Header ثابت
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
                      imagePath: AppImages.fruit,
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
              SizedBox(height: 65.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppStrings.firstName,
                      style: AppTextStyles.style20Black,
                    ),
                    SizedBox(height: 25.h),
                    CustomTextField(
                      controller: firstNameController,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.trim().isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                      label: AppStrings.firstName,
                      fillColor: AppColors.authTextfield,
                      filled: true,
                    ),
                    SizedBox(height: 42.h),
                    CustomElevatedButton(
                      text: AppStrings.startOrdering,
                      backgroundColor: AppColors.primaryLightColor,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // هنا هنبعت الاسم لأي Cubit أو Provider برا الصفحة
                       BlocProvider.of<AuthCubit>(context).saveUserName(firstNameController.text);

                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
