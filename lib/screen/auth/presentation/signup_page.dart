// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/core/utils/validator.dart';
import 'package:fastfood/screen/auth/presentation/widget/textfield_custom.dart';
import 'package:fastfood/screen/auth/shared/provider.dart';
import 'package:fastfood/widget/custom_button.dart';
import 'package:fastfood/widget/socal_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   final stateNotifier = ref.read(authNotifierProvider.notifier);
    // });
  }

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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: AppTextStyle.rubikTextSemibold.copyWith(
                    fontSize: 35.sp,
                    color: Colors.black,
                  ),
                ),
                20.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name"),
                    5.verticalSpace,
                    TextfieldCustom(
                      controller: stateNotifier.sighupNameController,
                      hintText: "Your Name",
                    ),
                  ],
                ),
                20.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
                    5.verticalSpace,
                    TextfieldCustom(
                      controller: stateNotifier.sighupEmailController,
                      hintText: "Your Email",
                    ),
                  ],
                ),
                20.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password"),
                    5.verticalSpace,
                    TextfieldCustom(
                      controller: stateNotifier.sighupPasswordController,
                      hintText: "Your Password",
                      suffix: IconButton(
                        icon: Icon(
                          state.isSignupVisiable
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          stateNotifier.sighupVisibility();
                        },
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context.pushRoute(ResetPasswordRoute());
                    },
                    child: Text(
                      'Forgot password?',
                      style: AppTextStyle.rubikTextRegular.copyWith(
                        color: AppColors.colorPrimary,
                        fontSize: 14.sp,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.colorPrimary,
                        decorationThickness: 1.5,
                      ),
                    ),
                  ),
                ),
                10.verticalSpace,
                CustomButton(
                  onPressed: () {
                    final errorEmailMessage = validateEmail(
                      stateNotifier.sighupEmailController.text,
                    );
                    final errorPasswordMessage = validatePassword(
                      stateNotifier.sighupPasswordController.text,
                    );

                    if ((stateNotifier.sighupNameController.text =
                            stateNotifier.sighupNameController.text.trim())
                        .isEmpty) {
                      showToastMessage("Name field is required");
                    } else if (errorEmailMessage != null) {
                      showToastMessage(errorEmailMessage);
                    } else if (errorPasswordMessage != null) {
                      showToastMessage(errorPasswordMessage);
                    } else {
                      stateNotifier.signUpWithEmailAndPassword(
                        onTap: () {
                          context.pushRoute(LoginRoute());
                          // context.pushRoute(
                          //   VerificationCodeRoute(
                          //     email: stateNotifier.sighupEmailController.text,
                          //   ),
                          // );
                        },
                      );
                    }
                  },
                  loading: state.isSighupLoading,
                  textlabel: "Sign Up",
                ),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: AppTextStyle.rubikTextLight.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.router.pushAndPopUntil(
                          LoginRoute(
                            // email: stateNotifier.sighupEmailController.text,
                          ),
                          predicate: (route) => false,
                        );
                      },
                      child: Text(
                        'Login',
                        style: AppTextStyle.rubikTextRegular.copyWith(
                          color: AppColors.colorPrimary,
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.colorPrimary,
                          decorationThickness: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                15.verticalSpace,
                Row(
                  children: [
                    10.horizontalSpace,
                    Expanded(child: Container(color: Colors.black, height: 2)),
                    20.horizontalSpace,
                    Text(
                      'Sign in with',
                      style: AppTextStyle.rubikTextMedium.copyWith(
                        fontSize: 17.sp,
                      ),
                    ),
                    20.horizontalSpace,
                    Expanded(child: Container(color: Colors.black, height: 2)),
                    10.horizontalSpace,
                  ],
                ),
                30.verticalSpace,
                Column(
                  children: [
                    SocalAuthButton(
                      onPressed: () {},
                      imageTextlabel: "facebook_logo.png",
                      textlabel: "Continue With Facebook",
                      loading: state.isFacebookLoading,
                    ),
                    10.verticalSpace,
                    SocalAuthButton(
                      onPressed:
                          () => stateNotifier.signInWithGoogle(
                            onTap: () => context.pushRoute(BaseRoute()),
                          ),
                      imageTextlabel: "google_logo.png",
                      textlabel: "Continue With Google",
                      loading: state.isGoogleLoading,
                    ),
                  ],
                ),
                30.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
