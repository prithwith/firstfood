import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5).r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.colorSecondaryMedium,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 80.w,
                  height: 80.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          8.verticalSpace,
          Text(
            title,
            style: AppTextStyle.rubikTextSemibold.copyWith(fontSize: 16.sp),
          ),
          4.verticalSpace,
          Text(
            subtitle,
            style: AppTextStyle.rubikTextLight.copyWith(fontSize: 13.sp),
          ),
          5.verticalSpace,
        ],
      ),
    );
  }
}
