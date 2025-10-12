// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/orders/presentation/widget/order_items.dart';
import 'package:fastfood/screen/orders/presentation/widget/recommendation_items.dart';
import 'package:fastfood/screen/orders/shared/provider.dart';
import 'package:fastfood/widget/app_back_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OrderPage extends ConsumerStatefulWidget {
  const OrderPage({super.key});

  @override
  ConsumerState<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(ordersNotifierProvider.notifier);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ordersNotifierProvider);
    final stateNotifier = ref.watch(ordersNotifierProvider.notifier);

    final baseState = ref.watch(baseNotifierProvider);
    final baseStateNotifier = ref.watch(baseNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButtom(),
        title: Text(
          "Your order",
          style: AppTextStyle.rubikTextBold.copyWith(fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin:
            EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(bottom: navHeight(context)).r,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              state.cartItemList.isEmpty
                  ? SizedBox(
                    height: 100.h,
                    child: const Center(child: Text("No item ordered yet")),
                  )
                  : ListView.builder(
                    itemCount: state.cartItemList.toSet().toList().length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final itemId = state.cartItemList.toSet().toList()[index];

                      final product = baseState.foodItemsList.firstWhere(
                        (element) => element.id == itemId,
                      );

                      try {
                        final quantity =
                            state.cartItemList
                                .where((element) => element == product.id)
                                .length;

                        final unitPrice =
                            int.tryParse(product.price.toString()) ?? 0;

                        final totalPrice = quantity * unitPrice;

                        return OrderItems(
                          id: product.id ?? "",
                          title: product.title ?? "UNKNOWN",
                          price: totalPrice.toString(),
                          image: product.image ?? "N/A",
                          extras: "N/A",
                          quantity: quantity.toString(),
                          onRemove: () {
                            stateNotifier.updateCartItem(
                              id: product.id,
                              isUpdate: false,
                            );
                          },
                          onAdd: () {
                            stateNotifier.updateCartItem(
                              id: product.id,
                              isUpdate: true,
                            );
                          },
                        );
                      } catch (e) {
                        return Text(
                          "Product Id ${product.id} Doesn't Avaliable",
                        );
                      }
                    },
                  ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Total :",
                        style: AppTextStyle.rubikTextSemibold.copyWith(
                          fontSize: 20.sp,
                        ),
                      ),
                      10.horizontalSpace,
                      Text(
                        "₹ ${state.cartItemList.toSet().fold<double>(0, (total, itemId) {
                          final product = baseState.foodItemsList.firstWhere((e) => e.id == itemId, orElse: () => baseState.foodItemsList.first);
                          final quantity = state.cartItemList.where((id) => id == product.id).length;
                          final price = double.tryParse(product.price.toString().replaceAll('₹', '').trim()) ?? 0;
                          return total + quantity * price;
                        }).toStringAsFixed(2)}",
                        style: AppTextStyle.rubikTextSemibold.copyWith(
                          fontSize: 20.sp,
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  25.verticalSpace,
                  Text(
                    "Recommendations",
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 18.sp),
                  ),
                  15.verticalSpace,
                  baseState.foodItemsList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : SizedBox(
                        height: 150.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: baseState.foodItemsList.length,
                          itemBuilder: (context, index) {
                            final item = baseState.foodItemsList[index];

                            return RecommendationItems(
                              onCart: () {
                                stateNotifier.updateCartItem(
                                  id: item.id.toString(),
                                  isUpdate: true,
                                );
                              },
                              id: item.id ?? "",
                              title: item.title ?? "Unknown",
                              price: item.price ?? "N/A",
                              image: item.image ?? "N/A",
                            );
                          },
                        ),
                      ),
                  200.verticalSpace,
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20).r,
        width: MediaQuery.sizeOf(context).width,
        child: OutlinedButton(
          onPressed: () {
            context.pushRoute(DeliveryMapRouteRoute());
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: AppColors.colorPrimaryDeep,
            side: BorderSide(width: 0, color: AppColors.colorPrimaryDeep),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15).r,
          ),
          child: Text(
            "Go to checkout ₹ ${state.cartItemList.toSet().fold<double>(0, (total, itemId) {
              final product = baseState.foodItemsList.firstWhere((e) => e.id == itemId, orElse: () => baseState.foodItemsList.first);
              final quantity = state.cartItemList.where((id) => id == product.id).length;
              final price = double.tryParse(product.price.toString().replaceAll('₹', '').trim()) ?? 0;
              return total + quantity * price;
            }).toStringAsFixed(2)}",
            style: AppTextStyle.rubikTextRegular.copyWith(
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
