import 'package:fastfood/core/model/sliderimage_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_state.freezed.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState({
    @Default(0) int currentIndex,
    @Default(false) bool isdiscoverLoading,

    @Default([]) List<SliderImageModel> sliderList,
  }) = _DiscoverState;
  const DiscoverState._();
}
