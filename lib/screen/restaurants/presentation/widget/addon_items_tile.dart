// ignore_for_file: deprecated_member_use

import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddonItemsTile extends StatelessWidget {
  final String title;
  final String price;
  final String iconPath;
  final Function()? onChanged;
  final bool isUpdate;
  final bool isSelection;

  const AddonItemsTile({
    super.key,
    required this.title,
    required this.price,
    required this.iconPath,
    this.onChanged,
    required this.isUpdate,
    this.isSelection = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(iconPath, width: 36.w, height: 36.w),
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("+ ₹ $price", style: AppTextStyle.rubikTextRegular),
          8.horizontalSpace,
          isSelection
              ? Text("")
              : GestureDetector(
                onTap: onChanged,
                child:
                    isUpdate
                        ? Icon(Icons.circle, color: AppColors.colorPrimary)
                        : Icon(
                          Icons.circle_outlined,
                          color: AppColors.colorPrimary,
                        ),
              ),
        ],
      ),
    );
  }
}
