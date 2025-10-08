// ignore_for_file: must_be_immutable

import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldCustom extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final bool readOnly;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final List<TextInputFormatter>? inputFormatters;

  const TextfieldCustom({
    super.key,
    required this.controller,

    this.suffix,
    this.prefix,
    this.hintText,
    this.labelText,
    this.obscureText = false,
    this.readOnly = false,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      keyboardType: keyboardType,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.rubikTextLight.copyWith(
          color: AppColors.colorBlack,
        ),
        labelText: labelText,
        labelStyle: AppTextStyle.rubikTextMedium.copyWith(
          color: AppColors.colorBlack,
        ),
        prefix: prefix,
        suffix: suffix,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorGrayLight),
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorSecondary),
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary),
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary),
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
      ),
    );
  }
}
