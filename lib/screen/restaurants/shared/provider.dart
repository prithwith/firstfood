import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/restaurants/application/restaurants_notifier.dart';
import 'package:fastfood/screen/restaurants/application/restaurants_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final restaurantsNotifierProvider =
    StateNotifierProvider<RestaurantsNotifier, RestaurantsState>(
      (ref) =>
          RestaurantsNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
