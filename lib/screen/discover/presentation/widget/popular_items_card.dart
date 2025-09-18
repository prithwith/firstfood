import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularItemsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const PopularItemsCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      margin: EdgeInsets.symmetric(horizontal: 5).r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(10.r),
            ),
            child: Image.asset(
              imagePath,
              height: 100.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          8.verticalSpace,
          Column(
            children: [
              Text(
                title,
                style: AppTextStyle.rubikTextSemibold.copyWith(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              4.verticalSpace,
              Text(
                subtitle,
                style: AppTextStyle.rubikTextLight.copyWith(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              5.verticalSpace,
            ],
          ),
        ],
      ),
    );
  }
}
