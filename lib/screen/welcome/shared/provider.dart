import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/welcome/application/welcome_notifier.dart';
import 'package:fastfood/screen/welcome/application/welcome_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final welcomeNotifierProvider =
    StateNotifierProvider<WelcomeNotifier, WelcomeState>(
      (ref) => WelcomeNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
