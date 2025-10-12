// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/orders/application/orders_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrdersNotifier extends StateNotifier<OrdersState> {
  OrdersNotifier(this._dio, this._hiveDataBase) : super(const OrdersState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateCartItem({required String? id, required bool isUpdate}) {
    if (id == null) return;

    List<String> tempCartItemList = [...state.cartItemList];

    isUpdate ? tempCartItemList.add(id) : tempCartItemList.remove(id);

    state = state.copyWith(cartItemList: tempCartItemList);
  }
}
