import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/search/application/search_notifier.dart';
import 'package:fastfood/screen/search/application/search_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, SearchState>(
      (ref) => SearchNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
