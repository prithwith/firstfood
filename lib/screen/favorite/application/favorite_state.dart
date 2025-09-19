import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    TabController? tabController,
    @Default(0) int selectedTabIndex,

    @Default([]) List<FooditemsModel> foodItemsList,
  }) = _FavoriteState;
  const FavoriteState._();
}
