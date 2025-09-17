// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/screen/favorite/presentation/widget/food_items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              controller: _tabController,
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
          // 15.verticalSpace,
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListView(
                  children: [
                    FoodItemsCard(
                      image: AppAssets.appImages + 'pizza.jpg',
                      title: 'Shrimp pizza',
                      subtitle: 'A seafood lover’s dream',
                      restaurant: 'Crazy Pizza spot',
                      priceLevel: 3,
                      time: '20-50min',
                      rating: '8.7',
                    ),
                    FoodItemsCard(
                      image: AppAssets.appImages + 'pizza.jpg',
                      title: 'Creme brulee',
                      subtitle: 'Velvety caramelized delight',
                      restaurant: 'La Pasta House',
                      priceLevel: 4,
                      time: '40-50min',
                      rating: '9.5',
                    ),
                    FoodItemsCard(
                      image: AppAssets.appImages + 'pizza.jpg',
                      title: 'Shrimp pizza',
                      subtitle: 'A seafood lover’s dream',
                      restaurant: 'Crazy Pizza spot',
                      priceLevel: 3,
                      time: '20-50min',
                      rating: '8.7',
                    ),
                    FoodItemsCard(
                      image: AppAssets.appImages + 'pizza.jpg',
                      title: 'Creme brulee',
                      subtitle: 'Velvety caramelized delight',
                      restaurant: 'La Pasta House',
                      priceLevel: 4,
                      time: '40-50min',
                      rating: '9.5',
                    ),
                    FoodItemsCard(
                      image: AppAssets.appImages + 'pizza.jpg',
                      title: 'Shrimp pizza',
                      subtitle: 'A seafood lover’s dream',
                      restaurant: 'Crazy Pizza spot',
                      priceLevel: 3,
                      time: '20-50min',
                      rating: '8.7',
                    ),
                    FoodItemsCard(
                      image: AppAssets.appImages + 'pizza.jpg',
                      title: 'Creme brulee',
                      subtitle: 'Velvety caramelized delight',
                      restaurant: 'La Pasta House',
                      priceLevel: 4,
                      time: '40-50min',
                      rating: '9.5',
                    ),
                  ],
                ),
                Center(child: Text("Restaurants")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
