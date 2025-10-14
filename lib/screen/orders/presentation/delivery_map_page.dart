import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DeliveryMapPagePage extends StatefulWidget {
  const DeliveryMapPagePage({super.key});

  @override
  State<DeliveryMapPagePage> createState() => _DeliveryMapPagePageState();
}

class _DeliveryMapPagePageState extends State<DeliveryMapPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 400.h,
                child: Image.asset(
                  '${AppAssets.appImages}delivery_map.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60,
                left: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.colorTypographyLighht,
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Delivery map',
                    style: AppTextStyle.rubikTextSemibold.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20).r,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 130.w,
                    height: 130.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 180.h,
                          width: 300.w,
                          child: CircularProgressIndicator(
                            strokeWidth: 7,
                            value: 0.6,
                            backgroundColor: Colors.grey[200],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.colorPrimary,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '12',
                              style: AppTextStyle.rubikTextRegular.copyWith(
                                fontSize: 25.sp,
                              ),
                            ),
                            Text(
                              'min\ndelivery time',
                              textAlign: TextAlign.center,
                              style: AppTextStyle.rubikTextLight.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  Text(
                    'La Pasta House',
                    style: AppTextStyle.rubikTextRegular.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    'Your order is being processed',
                    style: AppTextStyle.rubikTextRegular.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  Spacer(),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     showToastMessage("Order SuccessFull");
                  //     context.maybePop();
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: AppColors.colorPrimary,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     minimumSize: Size(MediaQuery.sizeOf(context).width, 50),
                  //   ),
                  //   child: Text(
                  //     'Hide delivery status',
                  //     style: AppTextStyle.rubikTextRegular.copyWith(
                  //       fontSize: 16.sp,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
