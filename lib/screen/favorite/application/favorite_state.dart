import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default([]) List<String> favfoodItemsIdList,

    @Default([]) List<String> favresturantsIdList,
  }) = _FavoriteState;
  const FavoriteState._();
}
