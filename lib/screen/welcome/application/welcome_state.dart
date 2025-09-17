import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_state.freezed.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    // UserModel? user,
    @Default(false) bool isStartGmailLoading,
    @Default(false) bool isFacebookLoading,
    @Default(false) bool isGoogleLoading,
  }) = _WelcomeState;
  const WelcomeState._();
}
