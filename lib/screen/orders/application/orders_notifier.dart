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
        title: "Tiramisu",
        price: "100",
        image: '${AppAssets.appImages}pizza.jpg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "2",
        title: "Tiramisu",
        price: "200",
        image: '${AppAssets.appImages}pizza.jpg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "3",
        title: "Tiramisu",
        price: "300",
        image: '${AppAssets.appImages}pizza.jpg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "4",
        title: "Tiramisu",
        price: "400",
        image: '${AppAssets.appImages}pizza.jpg',
      ),
    );

    tempRecomendationList.add(
      RecommendationModel(
        id: "5",
        title: "Tiramisu",
        price: "500",
        image: '${AppAssets.appImages}pizza.jpg',
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

  // void addCartItem({required String? id}) {
  //   if (id != null) {
  //     List<String> tempCartItemList = [...state.cartItemList];
  //     tempCartItemList.add(id);
  //     state = state.copyWith(cartItemList: tempCartItemList);
  //   }
  // }

  // void removeCartItem({required String? id}) {
  //   if (id != null) {
  //     List<String> tempCartItemList = [...state.cartItemList];
  //     tempCartItemList.remove(id);
  //     state = state.copyWith(cartItemList: tempCartItemList);
  //   }
  // }
}
