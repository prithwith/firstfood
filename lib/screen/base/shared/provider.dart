import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/base/application/base_notifier.dart';
import 'package:fastfood/screen/base/application/base_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final baseNotifierProvider = StateNotifierProvider<BaseNotifier, BaseState>(
  (ref) => BaseNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
);
