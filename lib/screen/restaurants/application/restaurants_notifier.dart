// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/recommendation_model.dart';
import 'package:fastfood/core/model/resturant_model.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/screen/restaurants/application/restaurants_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestaurantsNotifier extends StateNotifier<RestaurantsState> {
  RestaurantsNotifier(this._dio, this._hiveDataBase)
    : super(const RestaurantsState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void getResturantData() {
    List<ResturantModel> tempRestutantList = [];

    tempRestutantList.add(
      ResturantModel(
        id: "1",
        name: "AB PIZZA",
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Tiramisu",
            price: "100",
            image: '${AppAssets.appImages}pizza.jpg',
          ),
          RecommendationModel(
            id: "2",
            title: "Burger",
            price: "200",
            image: '${AppAssets.appImages}pizza.jpg',
          ),
          RecommendationModel(
            id: "3",
            title: "Biriyani",
            price: "300",
            image: '${AppAssets.appImages}pizza.jpg',
          ),
        ],
      ),
    );
    state = state.copyWith(resturantsList: tempRestutantList);
  }
}
