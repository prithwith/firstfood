import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    // UserModel? user,
    @Default(false) bool isLoginLoading,
    @Default(false) bool isSighupLoading,
    @Default(false) bool isFacebookLoading,
    @Default(false) bool isGoogleLoading,
    @Default(false) bool isResetPasswordLoading,
    @Default(false) bool isVerificationLoading,

    @Default(false) bool isLoginVisiable,
    @Default(false) bool isSignupVisiable,

    @Default(false) bool isLoginCheckbox,
  }) = _AuthState;
  const AuthState._();
}
