// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/auth/shared/provider.dart';
import 'package:fastfood/screen/welcome/presentation/widget/socalauth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class WelcomePage extends ConsumerStatefulWidget {
  const WelcomePage({super.key});

  @override
  ConsumerState<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends ConsumerState<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('${AppAssets.appImages}welcome_bg.jpg'),
          ),
        ),
        padding: EdgeInsets.all(20).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to",
              style: AppTextStyle.rubikTextBold.copyWith(
                fontSize: 50.sp,
                color: Colors.black,
              ),
            ),
            Text(
              "Fast Food",
              style: AppTextStyle.rubikTextBold.copyWith(
                fontSize: 50.sp,
                color: AppColors.colorPrimary,
              ),
            ),
            5.verticalSpace,
            Text(
              "Get your favourite meals delivered quickly right to your doorstep",
              style: AppTextStyle.rubikTextMedium.copyWith(fontSize: 15.sp),
            ),
            // FutureBuilder(
            //   future: changeText(),
            //   builder: (context, snapshot) {
            //     return Text(
            //       snapshot.data ?? "N|A",
            //       style: AppTextStyle.rubikTextMedium.copyWith(fontSize: 15.sp),
            //     );
            //   },
            // ),
            30.verticalSpace,
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "Start With Email",
                  style: AppTextStyle.rubikTextRegular.copyWith(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            30.verticalSpace,
            Row(
              children: [
                10.horizontalSpace,
                Expanded(child: Container(color: Colors.black, height: 2)),
                20.horizontalSpace,
                Text(
                  'Sign in with',
                  style: AppTextStyle.rubikTextMedium.copyWith(fontSize: 17.sp),
                ),
                20.horizontalSpace,
                Expanded(child: Container(color: Colors.black, height: 2)),
                10.horizontalSpace,
              ],
            ),
            30.verticalSpace,
            Column(
              children: [
                SocalAuthButtons(
                  onPressed: () {},
                  imageTextlabel: "facebook_logo.png",
                  textlabel: "Continue With Facebook",
                  loading: state.isFacebookLoading,
                ),
                10.verticalSpace,
                SocalAuthButtons(
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
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppTextStyle.rubikTextMedium.copyWith(fontSize: 15.sp),
                ),
                TextButton(
                  onPressed: () {
                    context.pushRoute(LoginRoute());
                  },
                  child: Text(
                    'Sign In',
                    style: AppTextStyle.rubikTextMedium.copyWith(
                      fontSize: 15.sp,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
