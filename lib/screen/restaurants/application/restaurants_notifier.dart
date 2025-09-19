// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/category_model.dart';
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
        image: "${AppAssets.appImages}cheeseburger.jpeg",
        subtitle: "A seafood lover's dream",
        deliveryCharge: '₹ 100',
        price: '₹ 470',
        time: '20-50min',
        rating: '8.7',
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Pizza",
            price: "221",
            image: '${AppAssets.appImages}pizza.jpg',
          ),
          RecommendationModel(
            id: "2",
            title: "Chees Burger",
            price: "214",
            image: '${AppAssets.appImages}cheeseburger.jpeg',
          ),
          RecommendationModel(
            id: "3",
            title: "Sushi",
            price: "541",
            image: '${AppAssets.appImages}sushi.jpeg',
          ),
          RecommendationModel(
            id: "4",
            title: "Pancakes",
            price: "254",
            image: '${AppAssets.appImages}pancakes.jpeg',
          ),
          RecommendationModel(
            id: "5",
            title: "Tacos",
            price: "380",
            image: '${AppAssets.appImages}tacos.jpeg',
          ),
        ],
      ),
    );

    tempRestutantList.add(
      ResturantModel(
        id: "2",
        name: "ABD Food",
        image: "${AppAssets.appImages}ramen.jpeg",
        subtitle: "A seafood lover's dream",
        deliveryCharge: '₹ 80',
        price: '₹ 580',
        time: '20-40min',
        rating: '8.1',
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Chees Burger",
            price: "214",
            image: '${AppAssets.appImages}cheeseburger.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Sushi",
            price: "541",
            image: '${AppAssets.appImages}sushi.jpeg',
          ),
          RecommendationModel(
            id: "3",
            title: "Tacos",
            price: "380",
            image: '${AppAssets.appImages}tacos.jpeg',
          ),
          RecommendationModel(
            id: "4",
            title: "Pancakes",
            price: "254",
            image: '${AppAssets.appImages}pancakes.jpeg',
          ),
        ],
      ),
    );

    tempRestutantList.add(
      ResturantModel(
        id: "3",
        name: "New Food",
        image: "${AppAssets.appImages}tacos.jpeg",
        subtitle: "A seafood lover's dream",
        deliveryCharge: '₹ 20',
        price: '₹ 980',
        time: '10-30min',
        rating: '5.1',
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Chees Burger",
            price: "214",
            image: '${AppAssets.appImages}cheeseburger.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Pancakes",
            price: "254",
            image: '${AppAssets.appImages}pancakes.jpeg',
          ),
          RecommendationModel(
            id: "3",
            title: "Tacos",
            price: "380",
            image: '${AppAssets.appImages}tacos.jpeg',
          ),
          RecommendationModel(
            id: "4",
            title: "Sushi",
            price: "541",
            image: '${AppAssets.appImages}sushi.jpeg',
          ),
        ],
      ),
    );

    state = state.copyWith(resturantsList: tempRestutantList);
  }

  void getAllCategoryItems() {
    final List<CategoryModel> tempCategoryItems = [];

    tempCategoryItems.addAll([
      CategoryModel(
        id: 1,
        imagePath: '${AppAssets.appImages}tacos.jpeg',
        title: 'BBQ',
        subtitle: '36 places',
      ),
      CategoryModel(
        id: 2,
        imagePath: '${AppAssets.appImages}garden_salad.png',
        title: 'Salads',
        subtitle: '44 places',
      ),
      CategoryModel(
        id: 3,
        imagePath: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Chinese',
        subtitle: '98 places',
      ),
      CategoryModel(
        id: 4,
        imagePath: '${AppAssets.appImages}indian_thali.jpeg',
        title: 'Indian',
        subtitle: '52 places',
      ),
      CategoryModel(
        id: 5,
        imagePath: '${AppAssets.appImages}spaghetti_meatball.jpeg',
        title: 'Desserts',
        subtitle: '110 places',
      ),
      CategoryModel(
        id: 6,
        imagePath: '${AppAssets.appImages}ramen.jpeg',
        title: 'Pasta',
        subtitle: '74 places',
      ),
      CategoryModel(
        id: 7,
        imagePath: '${AppAssets.appImages}sushi.jpeg',
        title: 'Sushi',
        subtitle: '65 places',
      ),
      CategoryModel(
        id: 8,
        imagePath: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Burgers',
        subtitle: '87 places',
      ),
      CategoryModel(
        id: 9,
        imagePath: '${AppAssets.appImages}pizza.jpg',
        title: 'Pizza',
        subtitle: '120 places',
      ),
      CategoryModel(
        id: 10,
        imagePath: '${AppAssets.appImages}fresh_fruits.jpeg',
        title: 'Brunch',
        subtitle: '94 places',
      ),
    ]);

    state = state.copyWith(categoryList: tempCategoryItems);
  }
}
