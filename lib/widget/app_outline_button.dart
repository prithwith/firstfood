import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppOutlineButton extends StatelessWidget {
  final String labelText;
  final void Function()? onPressed;

  const AppOutlineButton({
    super.key,
    required this.labelText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
        decoration: BoxDecoration(
          color: AppColors.colorPrimaryLight,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Text(
          labelText,
          style: AppTextStyle.rubikTextMedium.copyWith(
            fontSize: 12.sp,
            color: AppColors.colorPrimaryDeep,
          ),
        ),
      ),
    );
  }
}
