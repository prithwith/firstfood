// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/user_model.dart';
import 'package:fastfood/screen/base/application/base_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseNotifier extends StateNotifier<BaseState> {
  BaseNotifier(this._dio, this._hiveDataBase) : super(const BaseState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateBottomIndex(int index) {
    state = state.copyWith(bottomNavIndex: index);
  }

  Future<void> getUserInfo() async {
    final UserModel dummyUsersInfo = UserModel(
      name: "Jane Doe",
      email: "jane.doe@example.com",
      phone: "+1 555-123-4567",
      profileImageUrl: "https://placehold.co/100x100/A0BFFF/FFFFFF/png?text=JD",
      defaultAddressLine1: "123 Main Street",
      defaultAddressLine2: "Apt 4B",
      defaultAddressCity: "Springfield, IL 62704",
      defaultAddressZip: "USA",
    );

    state = state.copyWith(currentUser: dummyUsersInfo);
  }
}
