import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomButton extends StatelessWidget {
  final String textlabel;
  final void Function()? onPressed;
  final bool loading;
  final Color? loaderColor;

  const CustomButton({
    super.key,
    required this.textlabel,
    required this.onPressed,
    this.loading = false,
    this.loaderColor,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveLoaderColor = loaderColor ?? Colors.white;
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 45.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: loading ? Colors.blueGrey : AppColors.colorPrimary,
        ),
        onPressed: loading ? null : onPressed,
        child:
            loading
                ? LoadingAnimationWidget.progressiveDots(
                  color: effectiveLoaderColor,
                  size: 40.sp,
                )
                : Text(
                  textlabel,
                  style: AppTextStyle.rubikTextLight.copyWith(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
      ),
    );
  }
}
