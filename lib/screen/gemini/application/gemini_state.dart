import 'package:fastfood/core/model/textai_model.dart';
import 'package:fastfood/core/model/textimageai_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_state.freezed.dart';

@freezed
class GeminiState with _$GeminiState {
  const factory GeminiState({
    @Default([]) List<TextaiModel> textChat,
    // @Default([]) List textChat,
    @Default(false) bool isTextloading,

    @Default([]) List<TextimageaiModel> textAndImageChat,
    // @Default([]) List textAndImageChat,
    @Default(false) bool isTextWithImageloading,
  }) = _GeminiState;
  const GeminiState._();
}
