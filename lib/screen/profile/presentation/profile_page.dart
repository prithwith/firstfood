// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/screen/auth/shared/provider.dart';
import 'package:fastfood/screen/profile/presentation/widget/settings_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final hive = ref.watch(hiveProvider);
    final authState = ref.watch(authNotifierProvider);
    final authStateNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: statusHeight(context)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        '${AppAssets.appImages}app_icon.png',
                        height: 150,
                        width: 150,
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      hive.box.get(AppPreferenceKeys.name) ?? "UserName",
                      style: AppTextStyle.rubikTextSemibold.copyWith(
                        fontSize: 20.sp,
                      ),
                    ),
                    Text(
                      hive.box.get(AppPreferenceKeys.email) ?? "user@gmail.com",
                      style: AppTextStyle.rubikTextLight.copyWith(
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
              30.verticalSpace,
              SettingsTile(
                label: 'My Profile',
                imageLabel: 'profile.png',
                onTap: () {},
              ),
              SettingsTile(
                label: 'My Orders',
                imageLabel: 'orders.png',
                onTap: () {
                  context.pushRoute(OrderRoute());
                },
              ),
              SettingsTile(
                label: 'Delivery Address',
                imageLabel: 'delivery_address.png',
                onTap: () {},
              ),
              SettingsTile(
                label: 'Payments Methods',
                imageLabel: 'wallet.png',
                onTap: () {},
              ),
              SettingsTile(
                label: 'Contact Us',
                imageLabel: 'contact_us.png',
                onTap: () {},
              ),
              SettingsTile(
                label: 'Settings',
                imageLabel: 'settings.png',
                onTap: () {},
              ),
              SettingsTile(
                label: 'Chats',
                imageLabel: 'settings.png',
                onTap: () {},
              ),
              SettingsTile(
                label: 'Help & FAQ',
                imageLabel: 'profile.png',
                onTap: () {},
              ),
              30.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 20).r,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: AppColors.colorPrimary),
                  ),
                  onPressed: () {
                    context.replaceRoute(WelcomeRoute());
                  },
                  icon: Image.asset(
                    '${AppAssets.smallIcons}logout.png',
                    color: AppColors.colorPrimary,
                  ),
                  label: Text(
                    "Log Out",
                    style: AppTextStyle.rubikTextMedium.copyWith(
                      color: AppColors.colorPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
