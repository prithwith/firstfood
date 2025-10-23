// ignore_for_file: unused_field

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fastfood/core/constants/app_texts.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/textai_model.dart';
import 'package:fastfood/core/model/textimageai_model.dart';
import 'package:fastfood/screen/gemini/application/gemini_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_gemini/google_gemini.dart';

class GeminiNotifier extends StateNotifier<GeminiState> {
  GeminiNotifier(this._dio, this._hiveDataBase) : super(const GeminiState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  final TextEditingController textController = TextEditingController();
  final TextEditingController textImageController = TextEditingController();

  final ScrollController textScrollController = ScrollController();
  final ScrollController textImageScrollController = ScrollController();

  final gemini = GoogleGemini(apiKey: AppTexts.apiKey);

  /// Text only input
  void fromText({required String query}) {
    state = state.copyWith(isTextloading: true);
    state.textChat.add(TextaiModel(role: "User", text: query));
    // state.textChat.add({"role": "User", "text": query});
    textController.clear();
    scrollToTheEnd();

    gemini
        .generateFromText(query)
        .then((value) {
          state = state.copyWith(isTextloading: false);
          state.textChat.add(TextaiModel(role: "Gemini", text: value.text));
          // state.textChat.add({"role": "Gemini", "text": value.text});
          scrollToTheEnd();
        })
        .onError((error, stackTrace) {
          state = state.copyWith(isTextloading: false);
          state.textChat.add(
            TextaiModel(role: "Gemini", text: error.toString()),
          );
          // state.textChat.add({"role": "Gemini", "text": error.toString()});
          scrollToTheEnd();
        });
  }

  void scrollToTheEnd() {
    textScrollController.jumpTo(textScrollController.position.maxScrollExtent);
  }

  /// ....................................
  /// Text And Images methods.............
  /// ....................................
  void fromTextAndImage({required String query, required File image}) {
    state = state.copyWith(isTextWithImageloading: true);
    state.textAndImageChat.add(
      TextimageaiModel(role: "User", text: query, image: image.toString()),
    );
    // state.textAndImageChat.add({"role": "User", "text": query, "image": image});
    textImageController.clear();
    scrollToTheEndTextIMage();

    gemini
        .generateFromTextAndImages(query: query, image: image)
        .then((value) {
          state = state.copyWith(isTextWithImageloading: false);
          // state.textAndImageChat.add({
          //   "role": "Gemini",
          //   "text": value.text,
          //   "image": "",
          // });
          state.textAndImageChat.add(
            TextimageaiModel(role: "Gemini", text: value.text, image: ""),
          );
          scrollToTheEndTextIMage();
        })
        .onError((error, stackTrace) {
          state = state.copyWith(isTextWithImageloading: true);
          // state.textAndImageChat.add({
          //   "role": "Gemini",
          //   "text": error.toString(),
          //   "image": "",
          // });
          state.textAndImageChat.add(
            TextimageaiModel(role: "Gemini", text: error.toString(), image: ""),
          );
          scrollToTheEndTextIMage();
        });
  }

  void scrollToTheEndTextIMage() {
    textImageScrollController.jumpTo(
      textImageScrollController.position.maxScrollExtent,
    );
  }
}
