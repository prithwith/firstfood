// ignore_for_file: unused_field

import 'dart:async';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/chat_model.dart';
import 'package:fastfood/core/model/chat_users_model.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/chats/application/chat_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class ChatNotifier extends StateNotifier<ChatState> {
  ChatNotifier(this._dio, this._hiveDataBase) : super(const ChatState());

  final Dio _dio;
  final HiveDatabase _hiveDataBase;

  final TextEditingController messageController = TextEditingController();

  late RecorderController recorderController;
  late PlayerController playerController;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  StreamSubscription<List<ChatusersModel>>? _usersSub;
  StreamSubscription<List<ChatModel>>? _usersChats;

  ///.................................
  /// Method for get all users
  /// .................................

  void subscribeToUsers() {
    _usersSub?.cancel();
    _usersSub = _getUsersStream().listen((users) {
      state = state.copyWith(usersList: users, isUserLoading: false);
    });
  }

  Stream<List<ChatusersModel>> _getUsersStream() {
    return _firestore.collection("users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return ChatusersModel.fromJson(data);
      }).toList();
    });
  }

  ///.................................
  /// Method for fetch Message to users
  /// .................................

  void usersFetchMessage({required String chatRoomId}) {
    _usersChats?.cancel();
    _usersChats = _getMessage(chatRoomId: chatRoomId).listen((chats) {
      state = state.copyWith(userChatsList: chats, isChatLoading: false);
    });
  }

  Stream<List<ChatModel>> _getMessage({required String chatRoomId}) {
    return _firestore
        .collection("chat_rooms")
        .doc(chatRoomId)
        .collection("message")
        .orderBy("dateTime", descending: true)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) {
            final data = doc.data();
            return ChatModel.fromJson(data);
          }).toList();
        });
  }

  ///.................................
  /// Method for send Message to users
  /// .................................

  Future<void> sendMessage({
    required String chatRoomId,
    required String message,
    required String senderId,
    required String reciverId,
  }) async {
    final newMessage = {
      'chatRoomId': chatRoomId,
      'senderId': senderId,
      'reciverId': reciverId,
      'message': message,
      'dateTime': Timestamp.now(),
    };
    await _firestore
        .collection("chat_rooms")
        .doc(chatRoomId)
        .collection("message")
        .add(newMessage);
  }

  /// .................................
  /// Audio Record and listen methods
  /// ..................................
  void initializeController() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 44100;

    playerController = PlayerController();

    playerController.onPlayerStateChanged.listen((states) {
      state = state.copyWith(isPlaying: states == PlayerState.playing);
    });
  }

  Future<String> getFilePath() async {
    final dir = await getApplicationDocumentsDirectory();
    return '${dir.path}/rec_${DateTime.now().millisecondsSinceEpoch}.m4a';
  }

  ///................................
  /// Start Recording Method .......
  /// ..............................
  void updateRecord(bool updateStatus) {
    state = state.copyWith(isRecording: updateStatus);
  }

  Future<void> startRecording() async {
    try {
      final path = getFilePath();
      await recorderController.record(path: await path);
      state = state.copyWith(isRecording: true, recordPath: await path);
    } catch (e) {
      showToastMessage("Error Start Recording $e");
    }
  }

  ///.............................
  /// Stop  Recording Method
  /// .........................
  Future<void> stopRecording() async {
    await recorderController.stop(false);
    state = state.copyWith(isRecording: false);

    await playerController.preparePlayer(
      path: state.recordPath,
      shouldExtractWaveform: true,
    );
  }

  Future<void> togglePlayback() async {
    if (state.isPlaying) {
      await playerController.pausePlayer();
    } else {
      if (playerController.playerState == PlayerState.stopped) {
        await playerController.preparePlayer(
          path: state.recordPath,
          shouldExtractWaveform: true,
        );
      }
      await playerController.startPlayer(forceRefresh: false);
    }
  }

  @override
  void dispose() {
    _usersSub?.cancel();
    messageController.dispose();

    _usersChats?.cancel();

    recorderController.dispose();
    playerController.dispose();

    super.dispose();
  }
}
