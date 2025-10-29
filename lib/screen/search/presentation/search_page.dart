// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/screen/base/shared/provider.dart';
import 'package:fastfood/screen/favorite/presentation/widget/food_items_card.dart';
import 'package:fastfood/screen/favorite/shared/provider.dart';
import 'package:fastfood/screen/search/presentation/widget/search_item_button.dart';
import 'package:fastfood/screen/search/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final baseState = ref.watch(baseNotifierProvider);

    final favoriteState = ref.watch(favoriteNotifierProvider);
    final favoriteStateNotifier = ref.watch(favoriteNotifierProvider.notifier);

    final state = ref.watch(searchNotifierProvider);
    final notifier = ref.read(searchNotifierProvider.notifier);

    return GestureDetector(
      onTap: () => dismissKeyboard(context),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.r,
          ).copyWith(top: statusHeight(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: notifier.searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                ),
                onChanged: (value) {
                  notifier.searchTitles(
                    foodItemsList: baseState.foodItemsList,
                    query: value,
                  );
                },
              ),
              20.verticalSpace,
              Expanded(
                child: state.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : state.searchdataList.isEmpty
                    ? Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          SearchItemButton(label: "burger"),
                          SearchItemButton(label: "vegetarian"),
                          SearchItemButton(label: "healthy"),
                          SearchItemButton(label: "wrap"),
                          SearchItemButton(label: "fast food"),
                          SearchItemButton(label: "salad"),
                          SearchItemButton(label: "snack"),
                          SearchItemButton(label: "sandwitch"),
                          SearchItemButton(label: "sushi"),
                          SearchItemButton(label: "desserts"),
                          SearchItemButton(label: "thali"),
                          SearchItemButton(label: "lunch"),
                          SearchItemButton(label: "pizza"),
                          SearchItemButton(label: "kebab"),
                          SearchItemButton(label: "breakfast"),
                          SearchItemButton(label: "wings"),
                          SearchItemButton(label: "desserts"),
                        ],
                      )
                    : ListView.builder(
                        itemCount: state.searchdataList.length,
                        itemBuilder: (context, index) {
                          final item = state.searchdataList[index];

                          return FoodItemsCard(
                            image: item.image ?? "",
                            title: item.title ?? "",
                            subtitle: item.subtitle ?? "Always eat good food",
                            restaurant: item.restaurant ?? "",
                            time: item.time ?? "",
                            rating: item.rating ?? "",
                            priceLevel: item.price ?? "",
                            isLiked: favoriteState.favfoodItemsIdList.contains(
                              item.id,
                            ),
                            onTapFavorite: () {
                              favoriteStateNotifier.updateFavoriteFoodItems(
                                itemId: item.id ?? "",
                              );
                            },
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
