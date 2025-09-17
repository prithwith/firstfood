// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/search/application/search_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(this._dio, this._hiveDataBase) : super(const SearchState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  // Future<void> getSearch({VoidCallback? onTokenExpired}) async {
  //   try {
  //     state = state.copyWith(isLoading: true);

  //     var headers = {
  //       'Accept': '*/*',
  //       'Content-Type': 'application/json',
  //       'X-Access-Token': _hiveDataBase.box.get(AppPreferenceKeys.token),
  //     };

  //     _dio.options.headers.addAll(headers);

  //     final response = await _dio.get<Map<String, dynamic>>('user/Search');

  //     if (response.statusCode == 200 && response.data != null) {
  //       final user = UserModel.fromJson(response.data?["data"]);

  //       if (user.isDeleted ?? false) {
  //         onTokenExpired?.call();

  //         state = state.copyWith(isLoading: false);
  //       } else {
  //         state = state.copyWith(isLoading: false, user: user);
  //       }
  //     } else {
  //       showToastMessage("Session Expired. Please log in again.");

  //       state = state.copyWith(isLoading: false);

  //       onTokenExpired?.call();
  //     }
  //   } on DioException catch (e) {
  //     final error = DioExceptions.fromDioError(e).message;
  //     showToastMessage(error, errorMessage: e.message ?? '');

  //     state = state.copyWith(isLoading: false);

  //     onTokenExpired?.call();
  //   }
  // }
}
