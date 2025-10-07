// ignore_for_file: unused_local_variable

import 'package:auto_route/annotations.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/profile/presentation/widget/address_card.dart';
import 'package:fastfood/screen/profile/presentation/widget/info_fields.dart';
import 'package:fastfood/screen/profile/presentation/widget/profile_header.dart';
import 'package:fastfood/screen/profile/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MyProfilePage extends ConsumerStatefulWidget {
  const MyProfilePage({super.key});

  @override
  ConsumerState<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends ConsumerState<MyProfilePage> {
  Widget _buildSectionHeader(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final baseState = ref.watch(baseNotifierProvider);
    final state = ref.watch(profileNotifierProvider);
    final stateNotifier = ref.watch(profileNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "My Profile",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              showToastMessage('Settings Tapped');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileHeader(user: baseState.currentUser),

            16.verticalSpace,

            _buildSectionHeader('Personal Details', context),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    InfoField(
                      label: 'Full Name',
                      value: baseState.currentUser?.name ?? "NA",
                      icon: Icons.person_outline,
                    ),
                    const Divider(height: 0),
                    InfoField(
                      label: 'Email Address',
                      value: baseState.currentUser?.email ?? "NA",
                      icon: Icons.email_outlined,
                    ),
                    const Divider(height: 0),
                    InfoField(
                      label: 'Phone Number',
                      value: baseState.currentUser?.phone ?? "NA",
                      icon: Icons.phone_outlined,
                      isEditable: true,
                    ),
                  ],
                ),
              ),
            ),

            // 5. ADDRESS SECTION
            _buildSectionHeader('Shipping Address', context),
            AddressCard(
              user: baseState.currentUser,
              onTapEdit: () {
                showToastMessage('Edit Address Tapped');
              },
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
