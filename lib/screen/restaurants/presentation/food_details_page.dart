// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/model/recommendation_model.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/orders/shared/provider.dart';
import 'package:fastfood/screen/restaurants/shared/provider.dart';
import 'package:fastfood/widget/app_back_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FoodDetailsPage extends ConsumerStatefulWidget {
  final RecommendationModel iems;
  const FoodDetailsPage({super.key, required this.iems});

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
      body: Padding(
        padding: EdgeInsets.only(bottom: navHeight(context)),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.iems.image ?? "",
                  height: 250.h,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
                Positioned(top: 40.h, left: 16.w, child: AppBackButtom()),
                Positioned(
                  top: 40.h,
                  right: 16.w,
                  child: GestureDetector(
                    onTap: () => context.maybePop(),
                    child: CircleAvatar(
                      backgroundColor: AppColors.colorTypographyMedium,
                      child: Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16).r,
                decoration: BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.iems.title ?? "",
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
                            "€ ${widget.iems.price}",
                            style: AppTextStyle.rubikTextBold.copyWith(
                              fontSize: 18.sp,
                              color: AppColors.colorPrimary,
                            ),
                          ),
                          12.horizontalSpace,
                          Text(
                            "€ 850",
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
                      16.verticalSpace,
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
                      150.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.colorPrimaryLight,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15).r,
            child: Row(
              children: [
                10.horizontalSpace,
                GestureDetector(
                  onTap: () {
                    if (orderState.cartItemList
                            .where((element) => element == widget.iems.id)
                            .length >
                        1) {
                      orderStateNotifier.updateCartItem(
                        id: widget.iems.id,
                        isRemove: true,
                      );
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
                    child: Icon(Icons.remove, color: Colors.white, size: 20),
                  ),
                ),
                20.horizontalSpace,
                Text(
                  orderState.cartItemList
                      .where((element) => element == widget.iems.id)
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
                      id: widget.iems.id,
                      isAdd: true,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(1).r,
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimaryDeep,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
                10.horizontalSpace,
              ],
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: AppColors.colorPrimaryDeep,
              side: BorderSide(width: 0, color: AppColors.colorPrimaryDeep),
              padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 15.sp),
            ),
            onPressed: () {
              if (orderState.cartItemList
                  .where((element) => element == widget.iems.id)
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
