// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/favorite/application/favorite_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteNotifier extends StateNotifier<FavoriteState> {
  FavoriteNotifier(this._dio, this._hiveDataBase)
    : super(const FavoriteState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateFavoriteFoodItems({required String itemId}) {
    final List<String> tempfoodItemsList = [...state.favfoodItemsIdList];

    if (state.favfoodItemsIdList.contains(itemId)) {
      tempfoodItemsList.remove(itemId);
    } else {
      tempfoodItemsList.add(itemId);
    }

    state = state.copyWith(favfoodItemsIdList: tempfoodItemsList);
  }

  void updateFavoriteResturants({required String itemId}) {
    final List<String> tempResturantsList = [...state.favresturantsIdList];

    if (state.favresturantsIdList.contains(itemId)) {
      tempResturantsList.remove(itemId);
    } else {
      tempResturantsList.add(itemId);
    }

    state = state.copyWith(favresturantsIdList: tempResturantsList);
  }
}
