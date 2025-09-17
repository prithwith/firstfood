// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/orders/shared/provider.dart';
import 'package:fastfood/screen/restaurants/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FoodDetailsPage extends ConsumerStatefulWidget {
  final String id;
  final String name;
  final String price;

  const FoodDetailsPage({
    super.key,
    required this.id,
    required this.name,
    required this.price,
  });

  @override
  ConsumerState<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends ConsumerState<FoodDetailsPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(restaurantsNotifierProvider.notifier);
      // stateNotifier.getResturantData();
    });
  }

  final Set<String> selectedAddons = {};

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(restaurantsNotifierProvider);
    final stateNotifier = ref.watch(restaurantsNotifierProvider.notifier);
    final orderState = ref.watch(ordersNotifierProvider);
    final orderStateNotifier = ref.watch(ordersNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.colorSecondaryMedium,
      body: Column(
        children: [
          50.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.colorTypographyLighht,
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.colorTypographyLighht,
                    child: Icon(Icons.close, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          16.verticalSpace,
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                '${AppAssets.appImages}pizza.jpg',
                width: 180.w,
                height: 180.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          16.verticalSpace,
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16).r,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // "Carbonara pasta",
                        widget.name,
                        style: AppTextStyle.rubikTextBold.copyWith(
                          fontSize: 22.sp,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: AppColors.colorPrimary,
                      ),
                    ],
                  ),
                  8.verticalSpace,
                  Text(
                    "Smoked pork, Pecorino cheese, ground black pepper.",
                    style: AppTextStyle.rubikTextMedium.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  12.verticalSpace,
                  Row(
                    children: [
                      Text(
                        // "€7,50",
                        "€ ${widget.price}",
                        style: AppTextStyle.rubikTextBold.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.colorPrimary,
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        "€8,50",
                        style: AppTextStyle.rubikTextLight.copyWith(
                          fontSize: 14.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  Divider(),
                  8.verticalSpace,
                  Text(
                    "Add more",
                    style: AppTextStyle.rubikTextRegular.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  8.verticalSpace,
                  addonTile(
                    "Parmesan cheese",
                    "€2,50",
                    '${AppAssets.appImages}pizza.jpg',
                  ),
                  addonTile(
                    "Sause",
                    "€1,50",
                    '${AppAssets.appImages}pizza.jpg',
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "Package",
                    style: AppTextStyle.rubikTextMedium.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  addonTile(
                    "Package box cost",
                    "€0,50",
                    '${AppAssets.smallIcons}orders.png',
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.colorPrimaryLight,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 15,
                            ).r,
                        child: Row(
                          children: [
                            10.horizontalSpace,
                            GestureDetector(
                              onTap: () {
                                if (orderState.cartItemList
                                        .where(
                                          (element) => element == widget.id,
                                        )
                                        .length >
                                    1) {
                                  orderStateNotifier.updateCartItem(
                                    id: widget.id,
                                    isRemove: true,
                                  );
                                  // orderStateNotifier.removeCartItem(
                                  //   id: widget.id,
                                  // );
                                } else {
                                  showToastMessage("Minimum quantity is 1");
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.all(1).r,
                                decoration: BoxDecoration(
                                  color: AppColors.colorPrimaryDeep,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            20.horizontalSpace,
                            Text(
                              orderState.cartItemList
                                  .where((element) => element == widget.id)
                                  .length
                                  .toString(),
                              style: AppTextStyle.rubikTextLight.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.colorPrimary,
                              ),
                            ),
                            20.horizontalSpace,
                            GestureDetector(
                              onTap: () {
                                orderStateNotifier.updateCartItem(
                                  id: widget.id,
                                  isAdd: true,
                                );
                                // orderStateNotifier.addCartItem(id: widget.id);
                              },
                              child: Container(
                                padding: EdgeInsets.all(1).r,
                                decoration: BoxDecoration(
                                  color: AppColors.colorPrimaryDeep,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.colorPrimaryDeep,
                          side: BorderSide(
                            width: 0,
                            color: AppColors.colorPrimaryDeep,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.sp,
                            vertical: 15.sp,
                          ),
                        ),
                        onPressed: () {
                          if (orderState.cartItemList
                              .where((element) => element == widget.id)
                              .isEmpty) {
                            showToastMessage("Select at least 1 quantity");
                          } else {
                            context.pushRoute(OrderRoute());
                          }
                        },
                        child: Text(
                          "Add to order",
                          style: AppTextStyle.rubikTextMedium.copyWith(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         color: AppColors.colorPrimaryLight,
                  //         borderRadius: BorderRadius.circular(30),
                  //       ),
                  //       padding:
                  //           EdgeInsets.symmetric(
                  //             horizontal: 12,
                  //             vertical: 15,
                  //           ).r,
                  //       child: Row(
                  //         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           10.horizontalSpace,
                  //           GestureDetector(
                  //             onTap: () {},
                  //             child: Container(
                  //               padding: EdgeInsets.all(1).r,
                  //               decoration: BoxDecoration(
                  //                 color: AppColors.colorPrimaryDeep,
                  //                 borderRadius: BorderRadius.circular(5),
                  //               ),
                  //               child: Icon(
                  //                 Icons.remove,
                  //                 color: Colors.white,
                  //                 size: 20,
                  //               ),
                  //             ),
                  //           ),
                  //           20.horizontalSpace,
                  //           Text(
                  //             state.quantity,
                  //             style: AppTextStyle.rubikTextLight.copyWith(
                  //               fontSize: 16.sp,
                  //               color: AppColors.colorPrimary,
                  //             ),
                  //           ),
                  //           20.horizontalSpace,
                  //           GestureDetector(
                  //             onTap: () {},
                  //             child: Container(
                  //               padding: EdgeInsets.all(1).r,
                  //               decoration: BoxDecoration(
                  //                 color: AppColors.colorPrimaryDeep,
                  //                 borderRadius: BorderRadius.circular(5),
                  //               ),
                  //               child: Icon(
                  //                 Icons.add,
                  //                 color: Colors.white,
                  //                 size: 20,
                  //               ),
                  //             ),
                  //           ),
                  //           10.horizontalSpace,
                  //         ],
                  //       ),
                  //     ),
                  //     OutlinedButton(
                  //       style: OutlinedButton.styleFrom(
                  //         backgroundColor: AppColors.colorPrimaryDeep,
                  //         side: BorderSide(
                  //           width: 0,
                  //           color: AppColors.colorPrimaryDeep,
                  //         ),
                  //         padding: EdgeInsets.symmetric(
                  //           horizontal: 30.sp,
                  //           vertical: 15.sp,
                  //         ),
                  //       ),
                  //       onPressed: () {
                  //         if (int.parse(state.quantity) < 0) {
                  //           showToastMessage("select minimum 1 quantity");
                  //         } else {
                  //           context.pushRoute(OrderRoute());
                  //         }
                  //       },
                  //       child: Text(
                  //         "Add to order",
                  //         style: AppTextStyle.rubikTextMedium.copyWith(
                  //           fontSize: 16.sp,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget addonTile(String title, String price, String iconPath) {
    return ListTile(
      leading: Image.asset(iconPath, width: 36.w, height: 36.w),
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("+$price", style: AppTextStyle.rubikTextRegular),
          8.horizontalSpace,
          Radio<String>(
            value: title,
            groupValue: selectedAddons.contains(title) ? title : null,
            onChanged: (_) {},
            activeColor: AppColors.colorPrimary,
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
