import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/auth/application/auth_notifier.dart';
import 'package:fastfood/screen/auth/application/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
);
