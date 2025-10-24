// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/textai_model.dart';
import 'package:fastfood/screen/gemini/application/gemini_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GeminiNotifier extends StateNotifier<GeminiState> {
  GeminiNotifier(this._dio, this._hiveDataBase) : super(const GeminiState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  final TextEditingController textController = TextEditingController();

  Future<void> getTextInputs() async {
    final input = textController.text.trim();
    if (input.isEmpty) return;

    final userMessage = TextaiModel(role: "user", text: input);
    state = state.copyWith(
      textChatList: [...state.textChatList, userMessage],
      isTextloading: true,
    );

    try {
      final response = await Gemini.instance.prompt(parts: [Part.text(input)]);
      final output = response?.output ?? '';

      final aiMessage = TextaiModel(role: "model", text: output);
      state = state.copyWith(
        textChatList: [...state.textChatList, aiMessage],
        isTextloading: false,
      );

      textController.clear();
    } catch (e) {
      state = state.copyWith(isTextloading: false);
    }
  }
}
