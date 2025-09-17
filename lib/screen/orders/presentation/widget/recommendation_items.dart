import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationItems extends StatelessWidget {
  final String id;
  final String title;
  final String price;
  final String image;
  final VoidCallback onCart;

  const RecommendationItems({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.onCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.w,
      height: 500.h,
      margin: EdgeInsets.symmetric(horizontal: 5).r,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
          Stack(
            children: [
              Container(
                height: 80.h,
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
                      image,
                      width: 70.w,
                      height: 70.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: onCart,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4).r,
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 16),
                  ),
                ),
              ),
            ],
          ),
          8.verticalSpace,
          Text(
            "€ $price",
            style: AppTextStyle.rubikTextSemibold.copyWith(
              fontSize: 15.sp,
              color: AppColors.colorPrimary,
            ),
          ),
          4.verticalSpace,
          Text(
            title,
            style: AppTextStyle.rubikTextLight.copyWith(fontSize: 13.sp),
          ),
          5.verticalSpace,
        ],
      ),
    );
  }
}
