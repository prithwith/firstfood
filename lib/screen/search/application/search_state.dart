import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<FooditemsModel> searchdataList,
    @Default(false) bool isLoading,
  }) = _SearchState;
  const SearchState._();
}
