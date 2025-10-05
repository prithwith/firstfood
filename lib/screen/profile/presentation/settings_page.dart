import 'package:auto_route/annotations.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "Settings",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
      ),
    );
  }
}
