import 'package:fastfood/core/model/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default([]) List<AddressModel> addressList,
    @Default(false) bool isAddressLoading,
  }) = _ProfileState;
  const ProfileState._();
}
