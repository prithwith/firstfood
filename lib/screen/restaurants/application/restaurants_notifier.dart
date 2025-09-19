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

    tempRestutantList.addAll([
      ResturantModel(
        id: "1",
        name: "AB PIZZA",
        image: "${AppAssets.appImages}cheeseburger.jpeg",
        subtitle: "A seafood lover's dream",
        deliveryCharge: '₹ 100',
        price: '₹ 470',
        time: '20-50min',
        rating: '8.7',
        isLiked: false,
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
      ResturantModel(
        id: "2",
        name: "ABD Food",
        image: "${AppAssets.appImages}ramen.jpeg",
        subtitle: "Authentic Asian flavors",
        deliveryCharge: '₹ 80',
        price: '₹ 580',
        time: '20-40min',
        rating: '8.1',
        isLiked: true,
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
      ResturantModel(
        id: "3",
        name: "New Food",
        image: "${AppAssets.appImages}tacos.jpeg",
        subtitle: "Mexican flavors on the go",
        deliveryCharge: '₹ 20',
        price: '₹ 980',
        time: '10-30min',
        rating: '5.1',
        isLiked: false,
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
      ResturantModel(
        id: "4",
        name: "Sushi Express",
        image: "${AppAssets.appImages}sushi.jpeg",
        subtitle: "Fresh sushi and sashimi daily",
        deliveryCharge: '₹ 60',
        price: '₹ 750',
        time: '25-45min',
        rating: '9.2',
        isLiked: true,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Salmon Nigiri",
            price: "299",
            image: '${AppAssets.appImages}sushi.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "California Roll",
            price: "349",
            image: '${AppAssets.appImages}sushi.jpeg',
          ),
          RecommendationModel(
            id: "3",
            title: "Dragon Roll",
            price: "399",
            image: '${AppAssets.appImages}sushi.jpeg',
          ),
        ],
      ),
      ResturantModel(
        id: "5",
        name: "Sweet Treats",
        image: "${AppAssets.appImages}pancakes.jpeg",
        subtitle: "Cakes, pancakes & more",
        deliveryCharge: '₹ 50',
        price: '₹ 300',
        time: '15-25min',
        rating: '9.5',
        isLiked: false,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Chocolate Cake",
            price: "180",
            image: '${AppAssets.appImages}pancakes.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Blueberry Pancake",
            price: "220",
            image: '${AppAssets.appImages}pancakes.jpeg',
          ),
        ],
      ),
      ResturantModel(
        id: "6",
        name: "Bombay Masala",
        image: "${AppAssets.appImages}indian_thali.jpeg",
        subtitle: "Indian flavors redefined",
        deliveryCharge: '₹ 90',
        price: '₹ 650',
        time: '30-60min',
        rating: '8.8',
        isLiked: true,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Paneer Butter Masala",
            price: "280",
            image: '${AppAssets.appImages}indian_thali.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Chicken Biryani",
            price: "320",
            image: '${AppAssets.appImages}indian_thali.jpeg',
          ),
        ],
      ),
      ResturantModel(
        id: "7",
        name: "Dragon Wok",
        image: "${AppAssets.appImages}cheeseburger.jpeg",
        subtitle: "Authentic Chinese fast food",
        deliveryCharge: '₹ 70',
        price: '₹ 500',
        time: '20-35min',
        rating: '8.4',
        isLiked: false,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Kung Pao Chicken",
            price: "260",
            image: '${AppAssets.appImages}cheeseburger.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Fried Rice",
            price: "180",
            image: '${AppAssets.appImages}cheeseburger.jpeg',
          ),
        ],
      ),
      ResturantModel(
        id: "8",
        name: "Green Bowl",
        image: "${AppAssets.appImages}garden_salad.png",
        subtitle: "Healthy salads and smoothies",
        deliveryCharge: '₹ 40',
        price: '₹ 280',
        time: '10-20min',
        rating: '9.0',
        isLiked: true,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Caesar Salad",
            price: "150",
            image: '${AppAssets.appImages}garden_salad.png',
          ),
          RecommendationModel(
            id: "2",
            title: "Fruit Smoothie",
            price: "120",
            image: '${AppAssets.appImages}fresh_fruits.jpeg',
          ),
        ],
      ),
      ResturantModel(
        id: "9",
        name: "Pasta House",
        image: "${AppAssets.appImages}ramen.jpeg",
        subtitle: "Italian classics",
        deliveryCharge: '₹ 85',
        price: '₹ 720',
        time: '25-40min',
        rating: '9.1',
        isLiked: false,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Spaghetti Meatballs",
            price: "300",
            image: '${AppAssets.appImages}spaghetti_meatball.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Alfredo Pasta",
            price: "350",
            image: '${AppAssets.appImages}ramen.jpeg',
          ),
        ],
      ),
      ResturantModel(
        id: "10",
        name: "Morning Fresh",
        image: "${AppAssets.appImages}fresh_fruits.jpeg",
        subtitle: "Perfect brunch spot",
        deliveryCharge: '₹ 60',
        price: '₹ 400',
        time: '15-30min',
        rating: '9.3',
        isLiked: true,
        allDishes: [
          RecommendationModel(
            id: "1",
            title: "Fruit Bowl",
            price: "180",
            image: '${AppAssets.appImages}fresh_fruits.jpeg',
          ),
          RecommendationModel(
            id: "2",
            title: "Avocado Toast",
            price: "220",
            image: '${AppAssets.appImages}fresh_fruits.jpeg',
          ),
        ],
      ),
    ]);

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
