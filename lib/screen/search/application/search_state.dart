import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    // UserModel? user,
    @Default([]) List<dynamic> allFooddetailsList,
    @Default([]) List<dynamic> searchdataList,
    @Default([]) List<dynamic> searchHistoryList,
  }) = _SearchState;
  const SearchState._();
}
