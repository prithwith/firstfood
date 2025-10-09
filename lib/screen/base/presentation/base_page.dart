// ignore_for_file: unused_local_variable

import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/discover/presentation/discover_page.dart';
import 'package:fastfood/screen/favorite/presentation/favorite_page.dart';
import 'package:fastfood/screen/profile/presentation/profile_page.dart';
import 'package:fastfood/screen/restaurants/presentation/restaurants_page.dart';
import 'package:fastfood/screen/search/presentation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_textstyle.dart';

@RoutePage()
class BasePage extends ConsumerStatefulWidget {
  const BasePage({super.key});

  @override
  ConsumerState<BasePage> createState() => _BasePageState();
}

class _BasePageState extends ConsumerState<BasePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(baseNotifierProvider.notifier);

      stateNotifier.getUserInfo();
      stateNotifier.getAllFoodItemsData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(baseNotifierProvider);
    final stateNotifier = ref.watch(baseNotifierProvider.notifier);

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: state.bottomNavIndex,
        children: [
          DiscoverPage(),
          RestaurantsPage(),
          SearchPage(),
          FavoritePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          return Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: MediaQuery(
              data: MediaQuery.of(
                context,
              ).removeViewPadding(removeBottom: true),
              child: Container(
                color: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15).r,
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(67),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      height: 60.h,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(67),
                      ),
                      child: BottomNavigationBar(
                        elevation: 0,
                        currentIndex: state.bottomNavIndex,
                        backgroundColor: Colors.white.withValues(alpha: 0.8),
                        selectedItemColor: AppColors.colorPrimary,
                        unselectedItemColor: AppColors.colorTypography,
                        type: BottomNavigationBarType.fixed,
                        onTap: (index) {
                          stateNotifier.updateBottomIndex(index);
                        },
                        selectedLabelStyle: AppTextStyle.rubikTextMedium
                            .copyWith(fontSize: 10.sp),
                        unselectedLabelStyle: AppTextStyle.rubikTextMedium
                            .copyWith(fontSize: 10.sp),
                        items: <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Image.asset(
                              '${AppAssets.smallIcons}discover.png',
                              color:
                                  state.bottomNavIndex == 0
                                      ? AppColors.colorPrimary
                                      : AppColors.colorTypography,
                            ),
                            label: 'Discover',
                          ),
                          BottomNavigationBarItem(
                            icon: Image.asset(
                              '${AppAssets.smallIcons}restaurants.png',
                              color:
                                  state.bottomNavIndex == 1
                                      ? AppColors.colorPrimary
                                      : AppColors.colorTypography,
                            ),
                            label: 'Restaurants',
                          ),
                          BottomNavigationBarItem(
                            icon: Image.asset(
                              '${AppAssets.smallIcons}search.png',
                              color:
                                  state.bottomNavIndex == 2
                                      ? AppColors.colorPrimary
                                      : AppColors.colorTypography,
                            ),
                            label: 'Search',
                          ),
                          BottomNavigationBarItem(
                            icon: Image.asset(
                              '${AppAssets.smallIcons}favorite.png',
                              color:
                                  state.bottomNavIndex == 3
                                      ? AppColors.colorPrimary
                                      : AppColors.colorTypography,
                            ),
                            label: 'Favorite',
                          ),
                          BottomNavigationBarItem(
                            icon: Image.asset(
                              '${AppAssets.smallIcons}profile.png',
                              color:
                                  state.bottomNavIndex == 4
                                      ? AppColors.colorPrimary
                                      : AppColors.colorTypography,
                            ),
                            label: 'Profile',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
