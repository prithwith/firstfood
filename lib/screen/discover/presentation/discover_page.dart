// ignore_for_file: prefer_interpolation_to_compose_strings, unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
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
    });
  }

  final List<String> _imageList = [
    AppAssets.appImages + 'pizza.jpg',
    AppAssets.appImages + 'pizza.jpg',
    AppAssets.appImages + 'pizza.jpg',
    AppAssets.appImages + 'pizza.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(discoverNotifierProvider);
    final stateNotifier = ref.watch(discoverNotifierProvider.notifier);

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
                      AppAssets.smallIcons + 'home.png',
                      color: AppColors.colorGrayMedium,
                    ),
                  ),
                  8.horizontalSpace,
                  Text(
                    "Home,",
                    style: AppTextStyle.rubikTextBold.copyWith(fontSize: 15.sp),
                  ),
                  Text(
                    " JI. Soekarno Hatta 15A",
                    style: AppTextStyle.rubikTextLight.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  8.horizontalSpace,
                  Image.asset(
                    AppAssets.smallIcons + 'arrow.png',
                    color: AppColors.colorSecondary,
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
                  _imageList.map((imagePath) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  _imageList.asMap().entries.map((entry) {
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
                AppOutlineButton(onPressed: () {}, labelText: "See all"),
              ],
            ),
            10.verticalSpace,
            SizedBox(
              height: 180.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder:
                    (context, index) => FastestDeliveryCard(
                      title: 'Crazy taco',
                      subtitle: 'Delicious tacos, appetizers...',
                      price: '€3.00',
                      time: '40-50min',
                      rating: '9.5',
                      image: AppAssets.appImages + 'pizza.jpg',
                      badge: '€3.00 off delivery',
                    ),
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
                AppOutlineButton(onPressed: () {}, labelText: "See all"),
              ],
            ),
            10.verticalSpace,
            SizedBox(
              height: 180.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder:
                    (context, index) => PopularItemsCard(
                      imagePath: AppAssets.appImages + 'pizza.jpg',
                      title: 'Brunch',
                      subtitle: '94 places',
                    ),
              ),
            ),
            100.verticalSpace,
          ],
        ),
      ),
    );
  }
}
