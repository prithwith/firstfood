import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/profile/application/profile_notifier.dart';
import 'package:fastfood/screen/profile/application/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileNotifierProvider =
    StateNotifierProvider<ProfileNotifier, ProfileState>(
      (ref) => ProfileNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
