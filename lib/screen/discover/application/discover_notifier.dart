// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/discover/application/discover_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiscoverNotifier extends StateNotifier<DiscoverState> {
  DiscoverNotifier(this._dio, this._hiveDataBase)
    : super(const DiscoverState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
