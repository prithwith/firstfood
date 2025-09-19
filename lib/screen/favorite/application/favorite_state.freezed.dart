// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteState {
  TabController? get tabController => throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;
  List<FooditemsModel> get foodItemsList => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call(
      {TabController? tabController,
      int selectedTabIndex,
      List<FooditemsModel> foodItemsList});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabController = freezed,
    Object? selectedTabIndex = null,
    Object? foodItemsList = null,
  }) {
    return _then(_value.copyWith(
      tabController: freezed == tabController
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      foodItemsList: null == foodItemsList
          ? _value.foodItemsList
          : foodItemsList // ignore: cast_nullable_to_non_nullable
              as List<FooditemsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateImplCopyWith(
          _$FavoriteStateImpl value, $Res Function(_$FavoriteStateImpl) then) =
      __$$FavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TabController? tabController,
      int selectedTabIndex,
      List<FooditemsModel> foodItemsList});
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
      _$FavoriteStateImpl _value, $Res Function(_$FavoriteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabController = freezed,
    Object? selectedTabIndex = null,
    Object? foodItemsList = null,
  }) {
    return _then(_$FavoriteStateImpl(
      tabController: freezed == tabController
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      foodItemsList: null == foodItemsList
          ? _value._foodItemsList
          : foodItemsList // ignore: cast_nullable_to_non_nullable
              as List<FooditemsModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl extends _FavoriteState {
  const _$FavoriteStateImpl(
      {this.tabController,
      this.selectedTabIndex = 0,
      final List<FooditemsModel> foodItemsList = const []})
      : _foodItemsList = foodItemsList,
        super._();

  @override
  final TabController? tabController;
  @override
  @JsonKey()
  final int selectedTabIndex;
  final List<FooditemsModel> _foodItemsList;
  @override
  @JsonKey()
  List<FooditemsModel> get foodItemsList {
    if (_foodItemsList is EqualUnmodifiableListView) return _foodItemsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodItemsList);
  }

  @override
  String toString() {
    return 'FavoriteState(tabController: $tabController, selectedTabIndex: $selectedTabIndex, foodItemsList: $foodItemsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.tabController, tabController) ||
                other.tabController == tabController) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            const DeepCollectionEquality()
                .equals(other._foodItemsList, _foodItemsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabController, selectedTabIndex,
      const DeepCollectionEquality().hash(_foodItemsList));

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState extends FavoriteState {
  const factory _FavoriteState(
      {final TabController? tabController,
      final int selectedTabIndex,
      final List<FooditemsModel> foodItemsList}) = _$FavoriteStateImpl;
  const _FavoriteState._() : super._();

  @override
  TabController? get tabController;
  @override
  int get selectedTabIndex;
  @override
  List<FooditemsModel> get foodItemsList;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
