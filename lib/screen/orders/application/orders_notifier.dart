// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/recommendation_model.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/screen/orders/application/orders_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrdersNotifier extends StateNotifier<OrdersState> {
  OrdersNotifier(this._dio, this._hiveDataBase) : super(const OrdersState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void getRecommendationData() {
    List<RecommendationModel> tempRecomendationList = [];

    tempRecomendationList.add(
      RecommendationModel(
        id: "1",
        title: "Cheese Burger",
        price: "100",
        image: '${AppAssets.appImages}cheeseburger.jpeg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "2",
        title: "Chocolate Cake",
        price: "200",
        image: '${AppAssets.appImages}chocolate_cake.jpeg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "3",
        title: "Fresh Fruits",
        price: "300",
        image: '${AppAssets.appImages}fresh_fruits.jpeg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "4",
        title: "Garden Salad",
        price: "400",
        image: '${AppAssets.appImages}garden_salad.png',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "5",
        title: "Indian Thali",
        price: "500",
        image: '${AppAssets.appImages}indian_thali.jpeg',
      ),
    );
    tempRecomendationList.add(
      RecommendationModel(
        id: "6",
        title: "Pancakes",
        price: "500",
        image: '${AppAssets.appImages}pancakes.jpeg',
      ),
    );
    tempRecomendationList.add(
      RecommendationModel(
        id: "7",
        title: "Ramen",
        price: "500",
        image: '${AppAssets.appImages}ramen.jpeg',
      ),
    );
    tempRecomendationList.add(
      RecommendationModel(
        id: "8",
        title: "Spaghetti Meatball",
        price: "500",
        image: '${AppAssets.appImages}spaghetti_meatball.jpeg',
      ),
    );
    tempRecomendationList.add(
      RecommendationModel(
        id: "9",
        title: "Shushi",
        price: "500",
        image: '${AppAssets.appImages}sushi.jpeg',
      ),
    );
    tempRecomendationList.add(
      RecommendationModel(
        id: "10",
        title: "Tacos",
        price: "500",
        image: '${AppAssets.appImages}tacos.jpeg',
      ),
    );

    state = state.copyWith(recomendationList: tempRecomendationList);
  }

  void updateCartItem({
    required String? id,
    bool isAdd = false,
    bool isRemove = false,
  }) {
    if (id != null) {
      List<String> tempCartItemList = [...state.cartItemList];
      if (isAdd) {
        tempCartItemList.add(id);
      } else if (isRemove) {
        tempCartItemList.remove(id);
      }
      state = state.copyWith(cartItemList: tempCartItemList);
    }
  }
}
