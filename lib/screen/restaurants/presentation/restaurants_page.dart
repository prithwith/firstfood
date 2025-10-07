// ignore_for_file: unused_local_variable, avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/favorite/shared/provider.dart';
import 'package:fastfood/screen/restaurants/presentation/widget/restaurants_page_category_card.dart';
import 'package:fastfood/screen/restaurants/presentation/widget/restaurants_page_restaurant_card.dart';
import 'package:fastfood/screen/restaurants/shared/provider.dart';
import 'package:fastfood/widget/app_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RestaurantsPage extends ConsumerStatefulWidget {
  const RestaurantsPage({super.key});

  @override
  ConsumerState<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends ConsumerState<RestaurantsPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(restaurantsNotifierProvider.notifier);
      Future.microtask(() {
        stateNotifier.getAllCategoryItems();
        stateNotifier.getResturantData();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(restaurantsNotifierProvider);
    final stateNotifier = ref.watch(restaurantsNotifierProvider.notifier);

    final favoriteState = ref.watch(favoriteNotifierProvider);
    final favoriteStateNotifier = ref.watch(favoriteNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.colorPrimaryDeep,
                    radius: 18,
                    child: Image.asset(
                      '${AppAssets.smallIcons}home.png',
                      color: AppColors.colorGrayMedium,
                    ),
                  ),
                  Text(
                    "Home,",
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 15.sp),
                  ),
                  Text(
                    "JI. Soekarno Hatta 15A",
                    style: AppTextStyle.rubikTextLight.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  Image.asset(
                    '${AppAssets.smallIcons}arrow.png',
                    color: AppColors.colorPrimaryDeep,
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.colorGrayMedium,
                    child: Image.asset(
                      '${AppAssets.smallIcons}filter.png',
                      color: AppColors.colorTypographyDeep,
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.colorGrayMedium,
                    child: Image.asset(
                      '${AppAssets.smallIcons}map.png',
                      color: AppColors.colorTypographyDeep,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.verticalSpace,
              Text(
                "Restaurants",
                style: AppTextStyle.rubikTextBold.copyWith(
                  fontSize: 25.sp,
                  color: Colors.black,
                ),
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppTextStyle.rubikTextMedium.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                  AppOutlineButton(onPressed: () {}, labelText: "See all"),
                ],
              ),
              10.verticalSpace,
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.categoryList.length,
                  itemBuilder: (context, index) {
                    final item = state.categoryList[index];

                    return CategoryCard(
                      imagePath: item.imagePath ?? "",
                      title: item.title ?? "",
                      subtitle: item.subtitle ?? "",
                    );
                  },
                ),
              ),
              20.verticalSpace,
              Text(
                "All restaurants",
                style: AppTextStyle.rubikTextBold.copyWith(fontSize: 18.sp),
              ),
              20.verticalSpace,
              state.resturantsList.isEmpty
                  ? CircularProgressIndicator()
                  : ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(state.resturantsList.length, (
                      index,
                    ) {
                      final item = state.resturantsList[index];

                      return RestaurantsPageRestaurantCard(
                        image: item.image ?? "",
                        title: item.name ?? "",
                        subtitle: item.subtitle ?? "",
                        deliveryCharge: item.deliveryCharge ?? "",
                        price: item.price ?? "",
                        time: item.time ?? "",
                        rating: item.rating ?? "",
                        isLiked: favoriteState.favresturantsIdList.contains(
                          item.id,
                        ),
                        onTapFavorite: () {
                          favoriteStateNotifier.updateFavoriteResturants(
                            itemId: item.id ?? "",
                          );
                        },
                        onTap:
                            () => context.pushRoute(
                              RestaurantDetalisRoute(items: item),
                            ),
                      );
                    }),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
