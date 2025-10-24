import 'package:fastfood/core/model/textai_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_state.freezed.dart';

@freezed
class GeminiState with _$GeminiState {
  const factory GeminiState({
    @Default([]) List<TextaiModel> textChatList,
    @Default(false) bool isTextloading,

    @Default([]) List textAndImageChatList,
    @Default(false) bool isTextWithImageloading,
  }) = _GeminiState;
  const GeminiState._();
}
