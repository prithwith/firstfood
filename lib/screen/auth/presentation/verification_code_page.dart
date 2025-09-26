// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/auth/shared/provider.dart';
import 'package:fastfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class VerificationCodePage extends ConsumerStatefulWidget {
  final String email;
  const VerificationCodePage({super.key, required this.email});

  @override
  ConsumerState<VerificationCodePage> createState() =>
      _VerificationCodePageState();
}

class _VerificationCodePageState extends ConsumerState<VerificationCodePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // final stateNotifier = ref.read(authNotifierProvider.notifier);
    });
  }

  final defaultPinTheme = PinTheme(
    width: 60.w,
    height: 60.h,
    textStyle: TextStyle(
      fontSize: 24.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);

    return GestureDetector(
      onTap: () => dismissKeyboard(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20).copyWith(top: 30).r,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.verticalSpace,
                Text(
                  "Verification Code",
                  style: AppTextStyle.rubikTextSemibold.copyWith(
                    fontSize: 35.sp,
                    color: Colors.black,
                  ),
                ),
                20.verticalSpace,
                Text(
                  "Please enter the verification code that has been sent to ${widget.email}",
                ),
                20.verticalSpace,
                Center(
                  child: Pinput(
                    controller: stateNotifier.verificationCodeController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'fil all fields';
                      }
                      return null;
                    },
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.colorPrimary),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: BoxDecoration(
                        color: AppColors.colorWhite,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    followingPinTheme: defaultPinTheme.copyWith(
                      textStyle: TextStyle(color: AppColors.colorBlack),
                    ),
                    showCursor: true,
                  ),
                ),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Haven't recived code?",
                      style: AppTextStyle.rubikTextLight.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend',
                        style: AppTextStyle.rubikTextMedium.copyWith(
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20).r,
          child: CustomButton(
            onPressed: () {
              if (stateNotifier.verificationCodeController.text.isEmpty) {
                showToastMessage("OTP field is required");
              } else if ((stateNotifier
                      .verificationCodeController
                      .text
                      .length) !=
                  4) {
                showToastMessage("Enter 4 Digit Otp");
              } else {
                context.router.pushAndPopUntil(
                  LoginRoute(),
                  predicate: (route) => false,
                );
              }
            },
            loading: state.isVerificationLoading,
            textlabel: "Submit",
          ),
        ),
      ),
    );
  }
}
