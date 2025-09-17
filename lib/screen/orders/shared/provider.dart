import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/screen/orders/application/orders_notifier.dart';
import 'package:fastfood/screen/orders/application/orders_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ordersNotifierProvider =
    StateNotifierProvider<OrdersNotifier, OrdersState>(
      (ref) => OrdersNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
