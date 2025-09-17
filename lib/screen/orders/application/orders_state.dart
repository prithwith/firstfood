import 'package:fastfood/core/model/orderitem_model.dart';
import 'package:fastfood/core/model/recommendation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    // Model? user,
    @Default([]) List<RecommendationModel> recomendationList,
    @Default([]) List<String> cartItemList,
    @Default([]) List<OrderitemModel> ordersList,
  }) = _OrdersState;
  const OrdersState._();
}
