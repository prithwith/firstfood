// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:auto_route/annotations.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/screen/chats/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ChatPage extends ConsumerStatefulWidget {
  final String chatRoomId;
  final String reciverId;
  final String userName;

  const ChatPage({
    super.key,
    required this.chatRoomId,
    required this.reciverId,
    required this.userName,
  });

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(chatNotifierProvider.notifier);
      stateNotifier.usersFetchMessage(chatRoomId: widget.chatRoomId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final hive = ref.watch(hiveProvider);
    final state = ref.watch(chatNotifierProvider);
    final stateNotifier = ref.watch(chatNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimaryDeep,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.userName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: state.isChatLoading
                ? const Center(child: CircularProgressIndicator())
                : state.userChatsList.isEmpty
                ? const Center(child: Text("Start your chat with this user"))
                : ListView.builder(
                    itemCount: state.userChatsList.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final message = state.userChatsList[index];

                      // Check if the message was sent by the current user
                      final bool isSent =
                          message.senderId ==
                          hive.box.get(AppPreferenceKeys.email);

                      final String? content = message.messages;

                      return Align(
                        alignment: isSent
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ).r,
                          padding: EdgeInsets.all(10).r,
                          decoration: BoxDecoration(
                            color: isSent
                                ? AppColors.colorPrimary
                                : AppColors.colorGray,
                            borderRadius: BorderRadius.circular(10).r,
                          ),
                          child: _buildMessageContent(
                            content: content ?? "",
                            isSent: isSent,
                            isPlaying: state.isPlaying,
                            recordPath: state.recordPath,
                            // playerController: stateNotifier.playerController,
                            onTapAudio: () async {},
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10).r,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                10.horizontalSpace,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10).r,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: stateNotifier.messageController,
                            decoration: const InputDecoration(
                              hintText: "Type your message...",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        // Gallery Button
                        IconButton(
                          icon: const Icon(
                            Icons.photo_library,
                            color: Colors.grey,
                          ),
                          onPressed: () async {
                            final picker = ImagePicker();
                            final XFile? pickedFile = await picker.pickImage(
                              source: ImageSource.gallery,
                            );

                            if (pickedFile != null) {
                              await stateNotifier.sendMessage(
                                chatRoomId: widget.chatRoomId,
                                message: pickedFile.path,
                                reciverId: widget.reciverId,
                                senderId: hive.box.get(AppPreferenceKeys.email),
                              );
                            }
                          },
                        ),
                        // Camera Button
                        IconButton(
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                          onPressed: () async {
                            final picker = ImagePicker();
                            final XFile? pickedFile = await picker.pickImage(
                              source: ImageSource.camera,
                            );

                            if (pickedFile != null) {
                              await stateNotifier.sendMessage(
                                chatRoomId: widget.chatRoomId,
                                message: pickedFile.path,
                                reciverId: widget.reciverId,
                                senderId: hive.box.get(AppPreferenceKeys.email),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                10.horizontalSpace,
                // Send Button
                FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: AppColors.colorPrimaryDeep,
                  child: const Icon(Icons.send, color: Colors.white),
                  onPressed: () async {
                    final message = stateNotifier.messageController.text.trim();

                    if (message.isNotEmpty) {
                      await stateNotifier.sendMessage(
                        chatRoomId: widget.chatRoomId,
                        message: message,
                        reciverId: widget.reciverId,
                        senderId: hive.box.get(AppPreferenceKeys.email),
                      );
                      stateNotifier.messageController.clear();
                    }
                  },
                ),
                10.horizontalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Refactored message content builder to be a pure widget function
  Widget _buildMessageContent({
    required String content,
    required bool isSent,
    required String recordPath,
    required bool isPlaying,
    required Function() onTapAudio,
  }) {
    final isThisMessageActive = recordPath == content;
    final isThisMessagePlaying = isThisMessageActive && isPlaying;

    final file = File(content);

    // --- Image Message ---
    if (file.existsSync() &&
        (content.endsWith(".jpg") ||
            content.endsWith(".jpeg") ||
            content.endsWith(".png"))) {
      return Image.file(
        file,
        width: 180,
        height: 180,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Text(
          "Image: $content",
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ),
      );
    }

    // --- Text Message ---
    return Text(
      content,
      style: TextStyle(color: Colors.white, fontSize: 16.sp),
    );
  }
}
