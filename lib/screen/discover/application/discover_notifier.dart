// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/style/app_assets.dart';
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

  void showSliderImages() {
    final List<String> tempImageList = [
      '${AppAssets.appImages}fresh_fruits.jpeg',
      '${AppAssets.appImages}garden_salad.png',
      '${AppAssets.appImages}indian_thali.jpeg',
      '${AppAssets.appImages}spaghetti_meatball.jpeg',
    ];

    state = state.copyWith(sliderList: tempImageList);
  }
}
