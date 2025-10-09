import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FastestDeliveryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String time;
  final String rating;
  final String image;
  final String badge;
  final Function() onTap;

  const FastestDeliveryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.time,
    required this.rating,
    required this.image,
    required this.badge,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.w,
        margin: EdgeInsets.only(right: 10, bottom: 10).r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    image,
                    height: 100.h,
                    width: MediaQuery.sizeOf(context).width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4).r,
                    decoration: BoxDecoration(
                      color: AppColors.colorSecondaryLighht,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_offer_rounded,
                          color: AppColors.colorPrimary,
                          size: 16,
                        ),
                        4.horizontalSpace,
                        Text(
                          badge,
                          style: AppTextStyle.rubikTextMedium.copyWith(
                            color: AppColors.colorPrimary,
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 12).r.copyWith(top: 10).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 16.sp),
                  ),
                  4.verticalSpace,
                  Text(
                    subtitle,
                    style: AppTextStyle.rubikTextLight.copyWith(
                      fontSize: 12.sp,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  8.verticalSpace,
                  Row(
                    children: [
                      Text(
                        price,
                        style: AppTextStyle.rubikTextLight.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                      8.horizontalSpace,
                      Row(
                        children: [
                          Icon(Icons.timer_outlined, size: 14.sp),
                          4.horizontalSpace,
                          Text(
                            time,
                            style: AppTextStyle.rubikTextLight.copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.colorSecondary,
                            size: 14,
                          ),
                          2.verticalSpace,
                          Text(
                            rating,
                            style: AppTextStyle.rubikTextLight.copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
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
