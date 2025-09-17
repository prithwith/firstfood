import 'package:fastfood/core/model/chat_model.dart';
import 'package:fastfood/core/model/chat_users_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default(false) bool isUserLoading,
    @Default(false) bool isChatLoading,

    @Default([]) List<ChatusersModel> usersList,
    @Default([]) List<ChatModel> userChatsList,
  }) = _ChatState;
  const ChatState._();
}
