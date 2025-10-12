// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/model/resturant_model.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/favorite/shared/provider.dart';
import 'package:fastfood/screen/orders/shared/provider.dart';
import 'package:fastfood/screen/restaurants/presentation/widget/restaurant_popular_item_card.dart';
import 'package:fastfood/screen/restaurants/shared/provider.dart';
import 'package:fastfood/widget/app_back_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RestaurantDetalisPage extends ConsumerStatefulWidget {
  final ResturantModel items;
  const RestaurantDetalisPage({super.key, required this.items});

  @override
  ConsumerState<RestaurantDetalisPage> createState() =>
      _RestaurantDetalisPageState();
}

class _RestaurantDetalisPageState extends ConsumerState<RestaurantDetalisPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(restaurantsNotifierProvider);
    final stateNotifier = ref.watch(restaurantsNotifierProvider.notifier);

    final baseState = ref.watch(baseNotifierProvider);
    final baseStateNotifier = ref.watch(baseNotifierProvider.notifier);

    final orderState = ref.watch(ordersNotifierProvider);
    final orderStateNotifier = ref.watch(ordersNotifierProvider.notifier);

    final favoriteState = ref.watch(favoriteNotifierProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.items.image ?? "",
                  height: 250.h,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
                Positioned(top: 40.h, left: 16.w, child: AppBackButtom()),
                Positioned(
                  top: 40.h,
                  right: 16.w,
                  child: GestureDetector(
                    onTap: () {
                      context.maybePop();
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.colorTypographyMedium,
                      child: Icon(Icons.cancel_outlined, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16).r,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.items.name ?? "",
                        style: AppTextStyle.rubikTextBold.copyWith(
                          fontSize: 24.sp,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          favoriteState.favresturantsIdList.contains(
                                widget.items.id,
                              )
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              favoriteState.favresturantsIdList.contains(
                                    widget.items.id,
                                  )
                                  ? Colors.red
                                  : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  8.verticalSpace,
                  Text(
                    widget.items.subtitle ?? "",
                    style: AppTextStyle.rubikTextLight.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  16.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.colorSecondary,
                        size: 20,
                      ),
                      4.horizontalSpace,
                      Text("Excellent 9.5"),
                    ],
                  ),
                  8.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: AppColors.colorSecondary,
                        size: 20,
                      ),
                      4.horizontalSpace,
                      Expanded(
                        child: Text(
                          "Delivery in 40-50 min\nHome (Jl. Soekarno Hatta 15A)",
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: AppColors.colorSecondary,
                            size: 20,
                          ),
                          4.horizontalSpace,
                          Text(widget.items.time ?? ""),
                        ],
                      ),
                      // AppOutlineButton(onPressed: () {}, labelText: "Change"),
                    ],
                  ),
                  // 8.verticalSpace,
                  // Row(
                  //   children: [
                  //     Icon(
                  //       Icons.access_time,
                  //       color: AppColors.colorSecondary,
                  //       size: 20,
                  //     ),
                  //     4.horizontalSpace,
                  //     Text(widget.items.time ?? ""),
                  //   ],
                  // ),
                  20.verticalSpace,
                  Text(
                    "Popular items 🔥",
                    style: AppTextStyle.rubikTextRegular.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                  12.verticalSpace,
                  widget.items.allDishes.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.items.allDishes.length,
                        itemBuilder: (BuildContext context, int index) {
                          final items = widget.items.allDishes[index];

                          final item = baseState.foodItemsList.firstWhere(
                            (element) => element.id == items,
                          );

                          return RestaurantPopularItemCard(
                            index: item.id ?? "",
                            title: item.title ?? "",
                            description:
                                "Homemade basil pesto, Parmesan cheese, sun-dried tomatoes.",
                            priceNow: "₹ ${item.price}",
                            priceOld: "₹10,50",
                            imagePath: item.image ?? "",
                            onTap: () {
                              if (orderState.cartItemList
                                  .where((element) => element == item.id)
                                  .isEmpty) {
                                orderStateNotifier.updateCartItem(
                                  id: item.id,
                                  isUpdate: true,
                                );
                              }

                              context.pushRoute(FoodDetailsRoute(iems: item));
                            },
                          );
                        },
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
