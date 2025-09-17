// ignore_for_file: unused_field

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/chat_model.dart';
import 'package:fastfood/core/model/chat_users_model.dart';
import 'package:fastfood/screen/chats/application/chat_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatNotifier extends StateNotifier<ChatState> {
  ChatNotifier(this._dio, this._hiveDataBase) : super(const ChatState());

  final Dio _dio;
  final HiveDatabase _hiveDataBase;

  final TextEditingController messageController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  StreamSubscription<List<ChatusersModel>>? _usersSub;
  StreamSubscription<List<ChatModel>>? _usersChats;

  @override
  void dispose() {
    _usersSub?.cancel();
    messageController.dispose();

    _usersChats?.cancel();

    super.dispose();
  }

  ///.................................
  /// Method for get all users
  /// .................................

  void subscribeToUsers() {
    _usersSub?.cancel();
    _usersSub = getUsersStream().listen((users) {
      state = state.copyWith(usersList: users, isUserLoading: false);
    });
  }

  Stream<List<ChatusersModel>> getUsersStream() {
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
    _usersChats = getMessage(chatRoomId: chatRoomId).listen((chats) {
      state = state.copyWith(userChatsList: chats, isChatLoading: false);
    });
  }

  Stream<List<ChatModel>> getMessage({required String chatRoomId}) {
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
}
