import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantPopularItemCard extends StatelessWidget {
  final String index;
  final String title;
  final String description;
  final String priceNow;
  final String priceOld;
  final String imagePath;
  final Function() onTap;

  const RestaurantPopularItemCard({
    super.key,
    required this.index,
    required this.title,
    required this.description,
    required this.priceNow,
    required this.priceOld,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16).r,
        padding: EdgeInsets.all(12).r,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$index. $title",
                    style: AppTextStyle.rubikTextMedium.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    description,
                    style: AppTextStyle.rubikTextRegular.copyWith(
                      fontSize: 13.sp,
                    ),
                  ),
                  6.verticalSpace,
                  Row(
                    children: [
                      Text(
                        priceNow,
                        style: AppTextStyle.rubikTextBold.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.colorPrimary,
                        ),
                      ),
                      8.horizontalSpace,
                      Text(
                        priceOld,
                        style: AppTextStyle.rubikTextRegular.copyWith(
                          fontSize: 13.sp,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            12.verticalSpace,
            Container(
              height: 90.h,
              width: 110.w,
              padding: EdgeInsets.all(10).r,
              decoration: BoxDecoration(
                color: AppColors.colorSecondaryMedium,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
