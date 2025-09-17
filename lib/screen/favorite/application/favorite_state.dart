import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    // UserModel? user,
    @Default(false) bool isFavorite,
    @Default([]) List<dynamic> foodItemsList,
    @Default([]) List<dynamic> resturantsList,
  }) = _FavoriteState;
  const FavoriteState._();
}
