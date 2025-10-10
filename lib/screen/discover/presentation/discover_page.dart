// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/discover/presentation/widget/fastest_delivery_card.dart';
import 'package:fastfood/screen/discover/presentation/widget/popular_items_card.dart';
import 'package:fastfood/screen/discover/shared/provider.dart';
import 'package:fastfood/widget/app_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DiscoverPage extends ConsumerStatefulWidget {
  const DiscoverPage({super.key});

  @override
  ConsumerState<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<DiscoverPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(discoverNotifierProvider.notifier);

      Future.microtask(() {
        stateNotifier.showSliderImages();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(discoverNotifierProvider);
    final stateNotifier = ref.watch(discoverNotifierProvider.notifier);

    final baseState = ref.watch(baseNotifierProvider);
    final baseStateNotifier = ref.watch(baseNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.colorPrimaryDeep,
                    radius: 18,
                    child: Image.asset(
                      '${AppAssets.smallIcons}home.png',
                      color: AppColors.colorWhite,
                    ),
                  ),
                  5.horizontalSpace,
                  Text(
                    "Home,",
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 15.sp),
                  ),
                  5.horizontalSpace,
                  Expanded(
                    child: Text(
                      baseState.currentUser?.defaultAddressCity ?? "",
                      maxLines: 1,
                      style: AppTextStyle.rubikTextLight.copyWith(
                        fontSize: 12.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  8.horizontalSpace,
                  GestureDetector(
                    onTap: () {
                      showToastMessage("Fetching Current Location....");
                    },
                    child: Image.asset(
                      '${AppAssets.smallIcons}arrow.png',
                      color: AppColors.colorSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.verticalSpace,
            CarouselSlider(
              options: CarouselOptions(
                height: 160,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.92,
                onPageChanged: (index, reason) {
                  stateNotifier.setCurrentIndex(index);
                },
              ),
              items:
                  state.sliderList.map((imagePath) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: GestureDetector(
                        onTap: () {
                          final item = baseState.foodItemsList.firstWhere(
                            (items) => items.id == imagePath.id,
                          );

                          context.pushRoute(FoodDetailsRoute(iems: item));
                        },
                        child: Image.asset(
                          imagePath.image ?? "",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  }).toList(),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  state.sliderList.asMap().entries.map((entry) {
                    final index = entry.key;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4).r,
                      height: 8,
                      width: state.currentIndex == index ? 20 : 8,
                      decoration: BoxDecoration(
                        color:
                            state.currentIndex == index
                                ? Colors.black
                                : Colors.black26,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }).toList(),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fastest delivery 🐦‍🔥",
                  style: AppTextStyle.rubikTextMedium.copyWith(fontSize: 20.sp),
                ),
                AppOutlineButton(
                  onPressed: () {
                    context.pushRoute(
                      FastestDeliveryRoute(items: baseState.foodItemsList),
                    );
                  },
                  labelText: "See all",
                ),
              ],
            ),
            10.verticalSpace,
            SizedBox(
              height: 200.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: baseState.foodItemsList.length,
                itemBuilder: (context, index) {
                  final item = baseState.foodItemsList[index];

                  return FastestDeliveryCard(
                    title: item.title ?? "",
                    subtitle: item.subtitle ?? "",
                    price: item.price ?? "",
                    time: item.time ?? "",
                    rating: item.rating ?? "",
                    image: item.image ?? "",
                    badge: item.badge ?? "",
                    onTap: () {
                      context.pushRoute(FoodDetailsRoute(iems: item));
                    },
                  );
                },
              ),
            ),
            15.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular items 👏",
                  style: AppTextStyle.rubikTextMedium.copyWith(fontSize: 20.sp),
                ),
                AppOutlineButton(
                  onPressed: () {
                    context.pushRoute(
                      PopularItemsRoute(items: baseState.foodItemsList),
                    );
                  },
                  labelText: "See all",
                ),
              ],
            ),
            10.verticalSpace,
            SizedBox(
              height: 180.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: baseState.foodItemsList.length,
                itemBuilder: (context, index) {
                  final item = baseState.foodItemsList[index];

                  return PopularItemsCard(
                    imagePath: item.image ?? "",
                    title: item.title ?? "",
                    subtitle: item.places ?? "",
                    onTap: () {
                      context.pushRoute(FoodDetailsRoute(iems: item));
                    },
                  );
                },
              ),
            ),
            100.verticalSpace,
          ],
        ),
      ),
    );
  }
}
