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
import 'package:fastfood/screen/profile/shared/provider.dart';
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
    final state = ref.watch(profileNotifierProvider);
    final stateNotifier = ref.watch(profileNotifierProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(
                    top: statusHeight(context),
                    bottom: navHeight(context),
                  )
                  .r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        '${AppAssets.appImages}app_icon.png',
                        height: 150.h,
                        width: 150.w,
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
                onTap: () => context.pushRoute(MyProfileRoute()),
              ),
              SettingsTile(
                label: 'My Orders',
                imageLabel: 'orders.png',
                onTap: () => context.pushRoute(OrderRoute()),
              ),
              SettingsTile(
                label: 'Delivery Address',
                imageLabel: 'delivery_address.png',
                onTap: () => context.pushRoute(DeliveryAddressRoute()),
              ),
              SettingsTile(
                label: 'Payments Methods',
                imageLabel: 'wallet.png',
                onTap: () => context.pushRoute(WalletRoute()),
              ),
              SettingsTile(
                label: 'Contact Us',
                imageLabel: 'contact_us.png',
                onTap: () => stateNotifier.openGmail("support@gmail.com"),
              ),
              SettingsTile(
                label: 'Settings',
                imageLabel: 'settings.png',
                onTap: () => context.pushRoute(SettingsRoute()),
              ),
              SettingsTile(
                label: 'Chats',
                imageLabel: 'chat.png',
                onTap: () => context.pushRoute(UsersRoute()),
              ),
              30.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 20).r,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: AppColors.colorPrimary),
                  ),
                  onPressed: () {
                    Future.microtask(() {
                      hive.box.put(AppPreferenceKeys.token, "");
                      hive.box.put(AppPreferenceKeys.id, "");
                      hive.box.put(AppPreferenceKeys.name, "");
                      hive.box.put(AppPreferenceKeys.email, "");
                      hive.box.put(AppPreferenceKeys.uid, "");
                      hive.box.put(AppPreferenceKeys.password, "");
                    });

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
