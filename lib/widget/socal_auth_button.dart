import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SocalAuthButton extends StatelessWidget {
  final String textlabel;
  final String imageTextlabel;
  final void Function()? onPressed;
  final bool loading;
  final Color? loaderColor;

  const SocalAuthButton({
    super.key,
    required this.textlabel,
    required this.imageTextlabel,
    required this.onPressed,
    this.loading = false,
    this.loaderColor,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveLoaderColor = loaderColor ?? Colors.black;
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 40.h,
      child: OutlinedButton.icon(
        onPressed: loading ? null : onPressed,
        icon:
            loading
                ? LoadingAnimationWidget.progressiveDots(
                  color: effectiveLoaderColor,
                  size: 40.sp,
                )
                : Padding(
                  padding: EdgeInsets.all(8).r,
                  child: Image.asset(
                    "${AppAssets.appImages}$imageTextlabel",
                    height: 24,
                  ),
                ),
        label:
            loading
                ? LoadingAnimationWidget.progressiveDots(
                  color: effectiveLoaderColor,
                  size: 40.sp,
                )
                : Text(
                  textlabel,
                  style: AppTextStyle.rubikTextRegular.copyWith(
                    color: Colors.black,
                    fontSize: 15.sp,
                  ),
                ),
      ),
    );
  }
}
