import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/discover/application/discover_notifier.dart';
import 'package:fastfood/screen/discover/application/discover_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final discoverNotifierProvider = StateNotifierProvider<
  DiscoverNotifier,
  DiscoverState
>((ref) => DiscoverNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)));
