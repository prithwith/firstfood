import 'package:fastfood/core/model/resturant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurants_state.freezed.dart';

@freezed
class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState({
    //  Model,
    @Default([]) List<dynamic> categoryList,
    @Default([]) List<ResturantModel> resturantsList,
    @Default([]) List<dynamic> resturanstPopularitemList,
  }) = _RestaurantsState;
  const RestaurantsState._();
}
