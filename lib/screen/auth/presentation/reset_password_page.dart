// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/core/utils/validator.dart';
import 'package:fastfood/screen/auth/presentation/widget/textfield_custom.dart';
import 'package:fastfood/screen/auth/shared/provider.dart';
import 'package:fastfood/widget/app_back_buttom.dart';
import 'package:fastfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ResetPasswordPage extends ConsumerStatefulWidget {
  final String? email;
  const ResetPasswordPage({super.key, this.email});

  @override
  ConsumerState<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends ConsumerState<ResetPasswordPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(authNotifierProvider.notifier);
      stateNotifier.loginEmailController.text = widget.email ?? '';
    });
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
            padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30).r,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(top: 40.h, left: 16.w, child: AppBackButtom()),
                20.verticalSpace,
                Text(
                  "Reset Password",
                  style: AppTextStyle.rubikTextSemibold.copyWith(
                    fontSize: 35.sp,
                    color: Colors.black,
                  ),
                ),
                20.verticalSpace,
                Text(
                  "Please enter your email address to request a new password reset",
                ),
                20.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
                    5.verticalSpace,
                    TextfieldCustom(
                      controller: stateNotifier.resetPasswordEmailController,
                      hintText: "Your Email",
                    ),
                  ],
                ),
                50.verticalSpace,
                CustomButton(
                  onPressed: () {
                    final errorEmailMessage = validateEmail(
                      stateNotifier.resetPasswordEmailController.text,
                    );

                    if (errorEmailMessage != null) {
                      showToastMessage(errorEmailMessage);
                    } else {
                      context.pushRoute(
                        VerificationCodeRoute(
                          email:
                              stateNotifier.resetPasswordEmailController.text,
                        ),
                      );
                    }
                  },
                  loading: state.isResetPasswordLoading,
                  textlabel: "Send Email",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
