// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/favorite/shared/provider.dart';
import 'package:fastfood/screen/orders/shared/provider.dart';
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
    final addMorePrice = int.tryParse(state.selectedAddmoreValue) ?? 0;
    final packagePrice = int.tryParse(state.selectedPackagesValue) ?? 0;
    final basePrice = int.tryParse(widget.iems.price ?? '0') ?? 0;

    final itemCount =
        orderState.cartItemList.where((e) => e == widget.iems.id).length;

    final totalAmount = (basePrice + addMorePrice + packagePrice) * itemCount;

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
                      child: const Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16).r,
                decoration: const BoxDecoration(color: Colors.white),
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
                      8.verticalSpace,
                      addonTile(
                        title: "Sause",
                        price: "250",
                        iconPath: '${AppAssets.appImages}sushi.jpeg',
                        onChanged: (value) {
                          stateNotifier.addMoreValue(value);
                        },
                        groupValue: state.selectedAddmoreValue,
                      ),
                      addonTile(
                        title: "Parmesan cheese",
                        price: "150",
                        iconPath: '${AppAssets.appImages}tacos.jpeg',
                        onChanged: (value) {
                          stateNotifier.addMoreValue(value);
                        },
                        groupValue: state.selectedAddmoreValue,
                      ),
                      16.verticalSpace,
                      Text(
                        "Packages",
                        style: AppTextStyle.rubikTextMedium.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                      addonTile(
                        title: "Package box cost",
                        price: "50",
                        iconPath: '${AppAssets.smallIcons}orders.png',
                        onChanged: (value) {
                          stateNotifier.addPackagesValue(value);
                        },
                        groupValue: state.selectedPackagesValue,
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
                    if (itemCount > 1) {
                      orderStateNotifier.updateCartItem(
                        id: widget.iems.id,
                        isUpdate: false,
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
                    child: const Icon(Icons.add, color: Colors.white, size: 20),
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

  Widget addonTile({
    required String title,
    required String price,
    required String iconPath,
    required String? groupValue,
    required Function(String?)? onChanged,
  }) {
    return ListTile(
      leading: Image.asset(iconPath, width: 36.w, height: 36.w),
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("+ ₹ $price", style: AppTextStyle.rubikTextRegular),
          8.horizontalSpace,
          Radio<String>(
            value: price,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: AppColors.colorPrimary,
          ),
        ],
      ),
    );
  }
}
