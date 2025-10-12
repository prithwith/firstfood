// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/core/utils/validator.dart';
import 'package:fastfood/screen/auth/presentation/widget/textfield_custom.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/profile/presentation/widget/image_selection_dialog.dart';
import 'package:fastfood/screen/profile/shared/provider.dart';
import 'package:fastfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    final baseStateNotifier = ref.watch(baseNotifierProvider.notifier);

    final state = ref.watch(profileNotifierProvider);
    final stateNotifier = ref.watch(profileNotifierProvider.notifier);

    return GestureDetector(
      onTap: () {
        dismissKeyboard(context);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorPrimary,
          iconTheme: IconThemeData(color: AppColors.colorWhite),
          title: Text(
            "My Profile",
            style: AppTextStyle.rubikTextRegular.copyWith(
              color: AppColors.colorWhite,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0).r,
                child: Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:
                            () => imageSelectionDialog(
                              context,
                              onTapCamera: (value) {
                                baseStateNotifier.updateProfile(
                                  profilePicture: value,
                                );
                              },
                              onTapGellary: (value) {
                                baseStateNotifier.updateProfile(
                                  profilePicture: value,
                                );
                              },
                              onTapDelete: (value) {
                                baseStateNotifier.updateProfile(
                                  profilePicture: value,
                                );
                              },
                            ),
                        child: ClipOval(
                          child: Image.file(
                            File(baseState.currentUser?.profileImageUrl ?? ""),
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(
                                baseState.currentUser?.profileImageUrl ?? "",
                                height: 150,
                                width: 150,
                              );
                            },
                          ),
                        ),
                      ),
                      12.verticalSpace,
                      Text(
                        baseState.currentUser?.name ?? "NA",
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        baseState.currentUser?.email ?? "NA",
                        style: AppTextStyle.rubikTextLight,
                      ),
                    ],
                  ),
                ),
              ),
              _buildSectionHeader('Personal Details', context),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.verticalSpace,
                      TextfieldCustom(
                        controller: baseStateNotifier.nameController,
                        labelText: "Full Name",
                      ),
                      20.verticalSpace,
                      TextfieldCustom(
                        controller: baseStateNotifier.emailController,
                        labelText: "Email Id",
                      ),
                      20.verticalSpace,
                      TextfieldCustom(
                        controller: baseStateNotifier.numberController,
                        labelText: "Mobile Number",
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              _buildSectionHeader('Shipping Address', context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0).r,
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColors.colorPrimary,
                              size: 24.sp,
                            ),
                            8.horizontalSpace,
                            Text(
                              'Default Shipping Address',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        8.verticalSpace,
                        // Text(
                        //   baseState.currentUser?.name ?? "NA",
                        //   style: AppTextStyle.rubikTextRegular,
                        // ),
                        4.verticalSpace,
                        TextfieldCustom(
                          hintText: "Enter Address1",
                          controller: baseStateNotifier.address1Controller,
                        ),
                        TextfieldCustom(
                          hintText: "Enter Address2",
                          controller: baseStateNotifier.address2Controller,
                        ),
                        TextfieldCustom(
                          hintText: "Enter City",
                          controller: baseStateNotifier.cityController,
                        ),
                        TextfieldCustom(
                          hintText: "Enter ZipCode",
                          controller: baseStateNotifier.zipController,
                        ),
                        // Text(
                        //   baseState.currentUser?.defaultAddressLine1 ?? "NA",
                        // ),
                        // Text(
                        //   baseState.currentUser?.defaultAddressLine2 ?? "NA",
                        // ),
                        // Text(baseState.currentUser?.defaultAddressCity ?? "NA"),
                        // Text(baseState.currentUser?.defaultAddressZip ?? "NA"),
                      ],
                    ),
                  ),
                ),
              ),
              100.verticalSpace,
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(
            textlabel: "Update Profile",
            onPressed: () {
              final errorEmailMessage = validateEmail(
                baseStateNotifier.emailController.text,
              );

              final errorPhoneMessage = validateMobileNumber(
                baseStateNotifier.emailController.text,
              );

              if ((baseStateNotifier.nameController.text =
                      baseStateNotifier.nameController.text.trim())
                  .isEmpty) {
                showToastMessage("User Name is required");
              } else if (errorEmailMessage != null) {
                showToastMessage(errorEmailMessage);
              } else if (errorPhoneMessage != null) {
                showToastMessage(errorPhoneMessage);
              } else if ((baseStateNotifier.address1Controller.text =
                      baseStateNotifier.address1Controller.text.trim())
                  .isEmpty) {
                showToastMessage("Address1 is required");
              } else if ((baseStateNotifier.address2Controller.text =
                      baseStateNotifier.address2Controller.text.trim())
                  .isEmpty) {
                showToastMessage("Address2 is required");
              } else if ((baseStateNotifier.cityController.text =
                      baseStateNotifier.cityController.text.trim())
                  .isEmpty) {
                showToastMessage("City is required");
              } else if ((baseStateNotifier.zipController.text =
                      baseStateNotifier.zipController.text.trim())
                  .isEmpty) {
                showToastMessage("ZipCode is required");
              } else {
                baseStateNotifier.updateProfile(
                  onTap: () {
                    context.maybePop();
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
