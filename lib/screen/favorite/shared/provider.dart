import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/favorite/application/favorite_notifier.dart';
import 'package:fastfood/screen/favorite/application/favorite_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteNotifierProvider = StateNotifierProvider<
  FavoriteNotifier,
  FavoriteState
>((ref) => FavoriteNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)));
