// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
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
      final stateNotifier = ref.read(ordersNotifierProvider.notifier);
      stateNotifier.getRecommendationData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ordersNotifierProvider);
    final stateNotifier = ref.watch(ordersNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: AppBackButtom(),
        title: Text(
          "Your order",
          style: AppTextStyle.rubikTextBold.copyWith(fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20).r,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              state.cartItemList.isEmpty
                  ? SizedBox(
                    height: 100.h,
                    child: Center(child: Text("No item Order yet")),
                  )
                  : Column(
                    children: List.generate(
                      state.cartItemList.toSet().toList().length,
                      (index) {
                        final itemid =
                            state.cartItemList.toSet().toList()[index];
                        final product = state.recomendationList.firstWhere(
                          (element) => element.id == itemid,
                        );

                        return OrderItems(
                          id: product.id.toString(),
                          title: product.title ?? "UNKNOWN",
                          price:
                              (state.cartItemList
                                          .where(
                                            (element) => element == product.id,
                                          )
                                          .length *
                                      int.parse(product.price.toString()))
                                  .toString(),
                          image: product.image ?? "N/A",
                          extras: "NA",
                          quantity:
                              state.cartItemList
                                  .where((element) => element == product.id)
                                  .length
                                  .toString(),
                          onRemove: () {
                            stateNotifier.updateCartItem(
                              id: product.id,
                              isRemove: true,
                            );
                            // stateNotifier.removeCartItem(id: product.id);
                          },
                          onAdd: () {
                            stateNotifier.updateCartItem(
                              id: product.id,
                              isAdd: true,
                            );
                            // stateNotifier.addCartItem(id: product.id);
                          },
                        );
                      },
                    ),
                  ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  5.verticalSpace,
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
                        "€ 0.00",
                        style: AppTextStyle.rubikTextSemibold.copyWith(
                          fontSize: 20.sp,
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ],
                  ),
                  24.verticalSpace,
                  Text(
                    "Recommendations",
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 18.sp),
                  ),
                  12.verticalSpace,
                  state.recomendationList.isEmpty
                      ? CircularProgressIndicator()
                      : SizedBox(
                        height: 150.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            state.recomendationList.length,
                            (index) {
                              final item = state.recomendationList[index];

                              return RecommendationItems(
                                onCart: () {
                                  stateNotifier.updateCartItem(
                                    id: item.id.toString(),
                                    isAdd: true,
                                  );
                                  // stateNotifier.addCartItem(
                                  //   id: item.id.toString(),
                                  // );
                                },
                                id: item.id.toString(),
                                title: item.title ?? "Unknown",
                                price: item.price ?? "N/A",
                                image: item.image ?? "N/A",
                              );
                            },
                          ),
                        ),
                      ),
                  10.verticalSpace,
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 20).r,
        width: MediaQuery.sizeOf(context).width,
        child: OutlinedButton(
          onPressed: () {
            context.pushRoute(DeliveryMapRouteRoute());
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: AppColors.colorPrimaryDeep,
            side: BorderSide(width: 0, color: AppColors.colorPrimaryDeep),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15).r,
          ),
          child: Text(
            "Go to checkout  € 0.00",
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
