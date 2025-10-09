import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default([]) List<FooditemsModel> recomendationList,
    @Default([]) List<String> cartItemList,
  }) = _OrdersState;
  const OrdersState._();
}
