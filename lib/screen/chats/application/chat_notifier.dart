// ignore_for_file: unused_field

import 'dart:async';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/chat_model.dart';
import 'package:fastfood/core/model/chat_users_model.dart';
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

  ///.......................................................
  /// Audio Records and listen .............................
  ///.......................................................

  void initializeController() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 44100;

    playerController = PlayerController();

    playerController.onPlayerStateChanged.listen((states) {
      if (states == PlayerState.stopped || states == PlayerState.paused) {
        state = state.copyWith(isPlaying: false);
      } else if (states == PlayerState.playing) {
        state = state.copyWith(isPlaying: true);
      }
    });
    playerController.onCompletion.listen((_) {
      state = state.copyWith(isPlaying: false, recordPath: '');
    });
  }

  void clearRecordPath() {
    state = state.copyWith(recordPath: "");
  }

  Future<void> startRecording() async {
    final dir = await getApplicationDocumentsDirectory();
    final finalPath =
        "${dir.path}/rec_${DateTime.now().millisecondsSinceEpoch}.m4a";

    state = state.copyWith(isRecording: true, recordPath: finalPath);

    await recorderController.record(path: finalPath);
  }

  Future<void> stopRecording() async {
    await recorderController.stop();
    state = state.copyWith(isRecording: false);
  }

  Future<void> playRecording({required String path}) async {
    if (state.isPlaying) {
      await playerController.stopPlayer();
      state = state.copyWith(isPlaying: false);
    }

    state = state.copyWith(isPlaying: true);
    await playerController.preparePlayer(
      path: path,
      shouldExtractWaveform: true,
      volume: 1.0,
    );
    await playerController.seekTo(0);
    await playerController.startPlayer(forceRefresh: true);
    playerController.onCompletion.listen((_) async {
      await playerController.stopPlayer();
      state = state.copyWith(isPlaying: false);
    });
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
