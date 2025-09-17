import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_state.freezed.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState({
    // UserModel? user,
    @Default(false) bool isdiscoverLoading,
    @Default([]) List<dynamic> sliderList,
    @Default([]) List<dynamic> fastDeliveryList,
    @Default([]) List<dynamic> popularItemsList,
    @Default(0) int currentIndex,
  }) = _DiscoverState;
  const DiscoverState._();
}
