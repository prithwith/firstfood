// ignore_for_file: prefer_interpolation_to_compose_strings, unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/screen/favorite/presentation/widget/food_items_card.dart';
import 'package:fastfood/screen/favorite/shared/provider.dart';
import 'package:fastfood/screen/restaurants/presentation/widget/restaurants_page_restaurant_card.dart';
import 'package:fastfood/screen/restaurants/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FavoritePage extends ConsumerStatefulWidget {
  const FavoritePage({super.key});

  @override
  ConsumerState<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends ConsumerState<FavoritePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(favoriteNotifierProvider.notifier);

      Future.microtask(() {
        stateNotifier.getAllfoodItems();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final resturantsState = ref.watch(restaurantsNotifierProvider);
    final state = ref.watch(favoriteNotifierProvider);
    final stateNotifier = ref.watch(favoriteNotifierProvider.notifier);

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(height: statusHeight(context)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20).r,
              height: 45.h,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20).r,
              height: 45.h,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: TabBar(
                controller: state.tabController,
                indicator: BoxDecoration(
                  color: AppColors.colorPrimary,
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: Colors.white,
                labelStyle: AppTextStyle.rubikTextMedium,
                tabs: [Tab(text: 'Food Items'), Tab(text: 'Restaurants')],
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.all(2).r,
                dividerColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: state.tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  /// All Food items ..................
                  state.foodItemsList.isEmpty
                      ? Center(child: Text("No Items Found"))
                      : ListView.builder(
                        itemCount: state.foodItemsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = state.foodItemsList[index];

                          return FoodItemsCard(
                            image: item.image ?? "",
                            title: item.title ?? "",
                            subtitle: item.subtitle ?? "",
                            restaurant: item.restaurant ?? "",
                            time: item.time ?? "",
                            rating: item.rating ?? "",
                            priceLevel: item.priceLevel ?? "",
                            isLiked: item.isLiked ?? false,
                          );
                        },
                      ),

                  /// Resturans Lists.................
                  resturantsState.resturantsList.isEmpty
                      ? Center(child: Text("No Resturants Found"))
                      : ListView.builder(
                        itemCount: resturantsState.resturantsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = resturantsState.resturantsList[index];

                          return RestaurantsPageRestaurantCard(
                            image: item.image ?? "",
                            title: item.name ?? "",
                            subtitle: item.subtitle ?? "",
                            deliveryCharge: item.deliveryCharge ?? "",
                            price: item.price ?? "",
                            time: item.time ?? "",
                            rating: item.rating ?? "",
                            onTap:
                                () => context.pushRoute(
                                  RestaurantDetalisRoute(items: item),
                                ),
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
