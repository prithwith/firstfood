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
class LoginPage extends ConsumerStatefulWidget {
  // final String? email;
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(authNotifierProvider.notifier);
      stateNotifier.setLoginDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(
                    top: statusHeight(context),
                    bottom: navHeight(context),
                  )
                  .r,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: AppTextStyle.rubikTextSemibold.copyWith(
                  fontSize: 35.sp,
                  color: Colors.black,
                ),
              ),
              20.verticalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  5.verticalSpace,
                  TextfieldCustom(
                    controller: stateNotifier.loginEmailController,
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
                    controller: stateNotifier.loginPasswordController,
                    hintText: "Your Password",
                    // suffix: IconButton(
                    //   icon: Icon(
                    //     state.isLoginVisiable
                    //         ? Icons.visibility
                    //         : Icons.visibility_off,
                    //   ),
                    //   onPressed: () {
                    //     stateNotifier.loginVisibility();
                    //   },
                    // ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        context.pushRoute(
                          ResetPasswordRoute(
                            email: stateNotifier.loginEmailController.text,
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Checkbox(
                            value: state.isLoginCheckbox,
                            onChanged: (newValue) {
                              stateNotifier.loginCheckbox();
                            },
                          ),
                          Text(
                            'Remember Me',
                            style: AppTextStyle.rubikTextRegular.copyWith(
                              color: AppColors.colorBlack,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        context.pushRoute(
                          ResetPasswordRoute(
                            email: stateNotifier.loginEmailController.text,
                          ),
                        );
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
                ],
              ),

              10.verticalSpace,
              CustomButton(
                onPressed: () async {
                  final errorEmailMessage = validateEmail(
                    stateNotifier.loginEmailController.text,
                  );
                  final errorPasswordMessage = validatePassword(
                    stateNotifier.loginPasswordController.text,
                  );

                  if (errorEmailMessage != null) {
                    showToastMessage(errorEmailMessage);
                  } else if (errorPasswordMessage != null) {
                    showToastMessage(errorPasswordMessage);
                  } else {
                    // await stateNotifier.login();
                    // if (!context.mounted) return;
                    // context.router.pushAndPopUntil(
                    //   BaseRoute(),
                    //   predicate: (route) => false,
                    // );

                    stateNotifier.signInWithEmailAndPassword(
                      onTap: () {
                        context.router.pushAndPopUntil(
                          BaseRoute(),
                          predicate: (route) => false,
                        );
                      },
                    );
                  }
                },
                loading: state.isLoginLoading,
                textlabel: "Login",
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextStyle.rubikTextLight.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.pushAndPopUntil(
                        SignupRoute(),
                        predicate: (route) => false,
                      );
                    },
                    child: Text(
                      'Sign Up',
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
    );
  }
}
