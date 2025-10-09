// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/orders/application/orders_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrdersNotifier extends StateNotifier<OrdersState> {
  OrdersNotifier(this._dio, this._hiveDataBase) : super(const OrdersState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

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
