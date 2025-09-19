// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/screen/favorite/application/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteNotifier extends StateNotifier<FavoriteState> {
  FavoriteNotifier(this._dio, this._hiveDataBase)
    : super(const FavoriteState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  late TabController _tabController;

  void switchPage(TickerProvider ticker) {
    state = state.copyWith(
      tabController: TabController(length: 2, vsync: ticker),
    );
  }

  @override
  void dispose() {
    state.tabController?.dispose();
    super.dispose();
  }

  void getAllfoodItems() {
    final List<FooditemsModel> tempfoodItemsList = [];

    tempfoodItemsList.addAll([
      FooditemsModel(
        id: 1,
        image: '${AppAssets.appImages}tacos.jpeg',
        title: 'Shrimp Pizza',
        subtitle: 'A seafood lover’s dream',
        restaurant: 'Crazy Pizza Spot',
        priceLevel: "30",
        time: '20-50min',
        rating: '8.7',
        isLiked: true,
      ),
      FooditemsModel(
        id: 2,
        image: '${AppAssets.appImages}garden_salad.png',
        title: 'Garden Fresh Salad',
        subtitle: 'Crisp, healthy, and refreshing',
        restaurant: 'Green Bowl',
        priceLevel: "12",
        time: '15-25min',
        rating: '9.0',
        isLiked: false,
      ),
      FooditemsModel(
        id: 3,
        image: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Kung Pao Chicken',
        subtitle: 'Spicy stir-fry with peanuts',
        restaurant: 'Dragon Wok',
        priceLevel: "18",
        time: '25-40min',
        rating: '9.3',
        isLiked: true,
      ),
      FooditemsModel(
        id: 4,
        image: '${AppAssets.appImages}indian_thali.jpeg',
        title: 'Royal Thali',
        subtitle: 'A platter full of Indian delights',
        restaurant: 'Bombay Masala',
        priceLevel: "20",
        time: '30-45min',
        rating: '9.1',
        isLiked: false,
      ),
      FooditemsModel(
        id: 5,
        image: '${AppAssets.appImages}spaghetti_meatball.jpeg',
        title: 'Chocolate Lava Cake',
        subtitle: 'Warm, gooey, and irresistible',
        restaurant: 'Sweet Treats',
        priceLevel: "10",
        time: '10-20min',
        rating: '9.6',
        isLiked: true,
      ),
      FooditemsModel(
        id: 6,
        image: '${AppAssets.appImages}ramen.jpeg',
        title: 'Creamy Alfredo Pasta',
        subtitle: 'Italian classic with rich sauce',
        restaurant: 'Pasta House',
        priceLevel: "16",
        time: '20-35min',
        rating: '9.2',
        isLiked: true,
      ),
      FooditemsModel(
        id: 7,
        image: '${AppAssets.appImages}sushi.jpeg',
        title: 'Salmon Nigiri',
        subtitle: 'Fresh sushi made to perfection',
        restaurant: 'Sushi Express',
        priceLevel: "25",
        time: '30-50min',
        rating: '9.7',
        isLiked: false,
      ),
      FooditemsModel(
        id: 8,
        image: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Cheese Overload Burger',
        subtitle: 'Juicy patty with melted cheese',
        restaurant: 'Burger Hub',
        priceLevel: "15",
        time: '15-30min',
        rating: '9.0',
        isLiked: true,
      ),
      FooditemsModel(
        id: 9,
        image: '${AppAssets.appImages}pizza.jpg',
        title: 'Classic Pepperoni Pizza',
        subtitle: 'All-time favorite with extra cheese',
        restaurant: 'Hot Pizza',
        priceLevel: "22",
        time: '25-40min',
        rating: '9.4',
        isLiked: false,
      ),
      FooditemsModel(
        id: 10,
        image: '${AppAssets.appImages}fresh_fruits.jpeg',
        title: 'Fruit Platter',
        subtitle: 'A healthy brunch option',
        restaurant: 'Morning Fresh',
        priceLevel: "14",
        time: '10-20min',
        rating: '9.5',
        isLiked: true,
      ),
    ]);

    state = state.copyWith(foodItemsList: tempfoodItemsList);
  }
}
