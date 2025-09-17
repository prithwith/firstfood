import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderItems extends StatelessWidget {
  final String id;
  final String image;
  final String title;
  final String extras;
  final String price;
  final String quantity;
  final VoidCallback onRemove;
  final VoidCallback onAdd;

  const OrderItems({
    super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.extras,
    required this.price,
    required this.quantity,
    required this.onRemove,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12).r,
      margin: EdgeInsets.symmetric(vertical: 8).r,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.cover,
            ),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.rubikTextBold.copyWith(fontSize: 16.sp),
                ),
                4.verticalSpace,
                Text(
                  extras,
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                ),
                16.verticalSpace,
                Text(
                  "€ $price",
                  style: AppTextStyle.rubikTextSemibold.copyWith(
                    fontSize: 15.sp,
                    color: AppColors.colorPrimary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.colorPrimaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10).r,
            child: Row(
              children: [
                InkWell(
                  onTap: onRemove,
                  child: Container(
                    padding: EdgeInsets.all(4).r,
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimaryDeep,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.remove, color: Colors.white, size: 15),
                  ),
                ),
                8.horizontalSpace,
                Text(
                  quantity.toString(),
                  style: AppTextStyle.rubikTextLight.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.colorPrimaryDeep,
                  ),
                ),
                8.horizontalSpace,
                InkWell(
                  onTap: onAdd,
                  child: Container(
                    padding: EdgeInsets.all(4).r,
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimaryDeep,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
