// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:fastfood/screen/search/application/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(this._dio, this._hiveDataBase) : super(const SearchState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  final TextEditingController searchController = TextEditingController();

  void searchTitles({
    required List<FooditemsModel> foodItemsList,
    required String query,
  }) {
    state = state.copyWith(isLoading: true);
    if (query.isEmpty) {
      state = state.copyWith(searchdataList: foodItemsList, isLoading: false);
    } else {
      final filtered = foodItemsList
          .where(
            (article) => (article.title ?? "").toLowerCase().contains(
              query.toLowerCase(),
            ),
          )
          .toList();
      state = state.copyWith(searchdataList: filtered, isLoading: false);
    }
  }
}
