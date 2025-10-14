// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/favorite/shared/provider.dart';
import 'package:fastfood/screen/orders/shared/provider.dart';
import 'package:fastfood/screen/restaurants/presentation/widget/addon_items_tile.dart';
import 'package:fastfood/screen/restaurants/shared/provider.dart';
import 'package:fastfood/widget/app_back_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FoodDetailsPage extends ConsumerStatefulWidget {
  final FooditemsModel iems;
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

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(restaurantsNotifierProvider);
    final stateNotifier = ref.watch(restaurantsNotifierProvider.notifier);

    final baseState = ref.watch(baseNotifierProvider);
    final baseStateNotifier = ref.watch(baseNotifierProvider.notifier);

    final orderState = ref.watch(ordersNotifierProvider);
    final orderStateNotifier = ref.watch(ordersNotifierProvider.notifier);

    final favoriteState = ref.watch(favoriteNotifierProvider);
    final favoriteStateNotifier = ref.watch(favoriteNotifierProvider.notifier);

    // --- PRICE CALCULATION LOGIC ---
    final addMorePrice = state.addonItemsIdList.toSet().fold<double>(0, (
      total,
      itemId,
    ) {
      final product = baseState.addonItemsList.firstWhere(
        (e) => e.id == itemId,
      );
      final quantity =
          state.addonItemsIdList.where((id) => id == product.id).length;
      final price =
          double.tryParse(
            product.price.toString().replaceAll('₹', '').trim(),
          ) ??
          0;
      return total + quantity * price;
    });
    final basePrice = int.tryParse(widget.iems.price ?? '0') ?? 0;

    final itemCount =
        orderState.cartItemList.where((e) => e == widget.iems.id).length;

    final totalAmount = (basePrice + addMorePrice) * itemCount;

    return Scaffold(
      body: SingleChildScrollView(
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
                      child: const Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16).r,
              decoration: const BoxDecoration(color: Colors.white),
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
                      InkWell(
                        onTap: () {
                          favoriteStateNotifier.updateFavoriteFoodItems(
                            itemId: widget.iems.id ?? "",
                          );
                        },
                        child: Icon(
                          favoriteState.favfoodItemsIdList.contains(
                                widget.iems.id,
                              )
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              favoriteState.favfoodItemsIdList.contains(
                                    widget.iems.id,
                                  )
                                  ? Colors.red
                                  : AppColors.colorPrimary,
                        ),
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
                        "₹ ${widget.iems.price}",
                        style: AppTextStyle.rubikTextBold.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.colorPrimary,
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        "₹ 850",
                        style: AppTextStyle.rubikTextLight.copyWith(
                          fontSize: 14.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  const Divider(),
                  8.verticalSpace,
                  Text(
                    "Add more",
                    style: AppTextStyle.rubikTextRegular.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  baseState.addonItemsList.isEmpty
                      ? Center(child: Text("No Add On Items Found"))
                      : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: baseState.addonItemsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = baseState.addonItemsList[index];

                          return AddonItemsTile(
                            title: item.title ?? "",
                            price: item.price ?? "",
                            iconPath: item.image ?? "",
                            isUpdate: state.addonItemsIdList.contains(item.id),
                            onChanged: () {
                              stateNotifier.addMoreValue(item.id);
                            },
                          );
                        },
                      ),
                  150.verticalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          itemCount == 0
              ? OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.colorPrimaryDeep,
                  side: BorderSide(width: 0, color: AppColors.colorPrimaryDeep),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.sp,
                    vertical: 15.sp,
                  ),
                ),
                onPressed: () {
                  orderStateNotifier.updateCartItem(
                    id: widget.iems.id,
                    isUpdate: true,
                  );
                },
                child: Text(
                  "Add to cart",
                  style: AppTextStyle.rubikTextMedium.copyWith(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              )
              : Container(
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
                        // if (itemCount > 1) {
                        orderStateNotifier.updateCartItem(
                          id: widget.iems.id,
                          isUpdate: false,
                        );
                        // } else {
                        //   showToastMessage("Minimum quantity is 1");
                        // }
                      },
                      child: Container(
                        padding: EdgeInsets.all(1).r,
                        decoration: BoxDecoration(
                          color: AppColors.colorPrimaryDeep,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    20.horizontalSpace,
                    Text(
                      itemCount.toString(),
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
                          isUpdate: true,
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(1).r,
                        decoration: BoxDecoration(
                          color: AppColors.colorPrimaryDeep,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
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
              side: BorderSide(width: 0, color: AppColors.colorPrimaryDeep),
              padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 15.sp),
            ),
            onPressed: () {
              if (itemCount == 0) {
                showToastMessage("Select at least 1 quantity");
              } else {
                // baseStateNotifier.addTaxCharges(
                //   id: widget.iems.id.toString(),
                //   totalAmount: totalAmount.toString(),
                // );
                context.pushRoute(OrderRoute());
              }
            },
            child: Text(
              "Add to order ₹$totalAmount",
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
}
