import 'package:fastfood/core/model/fastdelivery_model.dart';
import 'package:fastfood/core/model/popularitems_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_state.freezed.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState({
    @Default(0) int currentIndex,
    @Default(false) bool isdiscoverLoading,

    @Default([]) List<String> sliderList,

    @Default([]) List<FastDeliveryModel> fastDeliveryList,
    @Default([]) List<PopularitemsModel> popularItemsList,
  }) = _DiscoverState;
  const DiscoverState._();
}
