// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/sliderimage_model.dart';
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
    final List<SliderImageModel> tempImageList = [];

    tempImageList.addAll([
      SliderImageModel(
        id: "1",
        image: '${AppAssets.appImages}fresh_fruits.jpeg',
      ),
      SliderImageModel(id: "2", image: '${AppAssets.appImages}pizza.jpg'),
      SliderImageModel(
        id: "3",
        image: '${AppAssets.appImages}cheeseburger.jpeg',
      ),
      SliderImageModel(id: "4", image: '${AppAssets.appImages}sushi.jpeg'),
      SliderImageModel(id: "5", image: '${AppAssets.appImages}ramen.jpeg'),
    ]);

    state = state.copyWith(sliderList: tempImageList);
  }
}
