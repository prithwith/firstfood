import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class SearchItemButton extends StatelessWidget {
  final String label;
  const SearchItemButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.colorSecondaryDeep,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: () {},
      child: Text(
        label,
        style: AppTextStyle.rubikTextLight.copyWith(color: Colors.white),
      ),
    );
  }
}
