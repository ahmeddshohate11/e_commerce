import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/positioned_image_model.dart';

class ImagesStack extends StatelessWidget {
  final List<PositionedImageModel> images;
  final Color backgroundColor;
  final double height;

  const ImagesStack({
    super.key,
    required this.images,
    required this.backgroundColor,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height.h,
      color: backgroundColor,
      child: Stack(
        // Map each PositionedImageModel to a Positioned widget 
        children: images.map((img) {
          return Positioned(
            top: img.top.h,
            left: img.left.w,
            child: Image.asset(
              img.imagePath,
              width: img.width.w,
              height: img.height.h,
            ),
          );
        }).toList(),
      ),
    );
  }
}
