import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String label;
  final String imageLabel;
  final VoidCallback onTap;

  const SettingsTile({
    super.key,
    required this.label,
    required this.imageLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        AppAssets.smallIcons + imageLabel,
        color: AppColors.colorSecondary,
      ),
      onTap: onTap,
      title: Text(label, style: AppTextStyle.rubikTextSemibold),
    );
  }
}
