import 'package:fastfood/core/model/category_model.dart';
import 'package:fastfood/core/model/resturant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurants_state.freezed.dart';

@freezed
class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState({
    @Default([]) List<CategoryModel> categoryList,
    @Default([]) List<ResturantModel> resturantsList,
  }) = _RestaurantsState;
  const RestaurantsState._();
}
