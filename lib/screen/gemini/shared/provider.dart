import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/gemini/application/gemini_notifier.dart';
import 'package:fastfood/screen/gemini/application/gemini_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final geminiNotifierProvider =
    StateNotifierProvider<GeminiNotifier, GeminiState>(
      (ref) => GeminiNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
