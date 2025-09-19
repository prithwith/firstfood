import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantsPageRestaurantCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String deliveryCharge;
  final String price;
  final String time;
  final String rating;
  final bool isLiked;
  final Function() onTap;

  const RestaurantsPageRestaurantCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.deliveryCharge,
    required this.price,
    required this.time,
    required this.rating,
    required this.isLiked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10).r,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10.sp,
                  right: 10.sp,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_outline,
                      color: isLiked ? Colors.red : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 20.sp),
                  ),
                  4.verticalSpace,
                  Text(
                    subtitle,
                    style: AppTextStyle.rubikTextLight.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                  4.verticalSpace,
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        '${AppAssets.smallIcons}truck_fast.png',
                        color: AppColors.colorSecondary,
                        width: 20,
                      ),
                      4.horizontalSpace,
                      Text(
                        deliveryCharge,
                        style: AppTextStyle.rubikTextLight.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                      20.horizontalSpace,
                      Image.asset(
                        '${AppAssets.smallIcons}wallet.png',
                        color: AppColors.colorSecondary,
                        width: 20,
                      ),
                      4.horizontalSpace,
                      Text(price),
                      20.horizontalSpace,
                      Icon(
                        Icons.access_time_filled,
                        size: 20,
                        color: AppColors.colorSecondary,
                      ),
                      4.horizontalSpace,
                      Text(time),
                      20.horizontalSpace,
                      Image.asset(
                        '${AppAssets.smallIcons}star.png',
                        color: AppColors.colorSecondary,
                        width: 20,
                      ),
                      4.horizontalSpace,
                      Text(rating),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
