import 'package:fastfood/core/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState({
    @Default(0) int bottomNavIndex,
    @Default(false) bool isLoading,

    UserModel? currentUser,
  }) = _BaseState;
  const BaseState._();
}
