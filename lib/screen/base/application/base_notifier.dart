// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/base/application/base_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseNotifier extends StateNotifier<BaseState> {
  BaseNotifier(this._dio, this._hiveDataBase) : super(const BaseState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateBottomIndex(int index) {
    state = state.copyWith(bottomNavIndex: index);
  }
}
