import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/chats/application/chat_notifier.dart';
import 'package:fastfood/screen/chats/application/chat_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatNotifierProvider = StateNotifierProvider<ChatNotifier, ChatState>(
  (ref) => ChatNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
);
