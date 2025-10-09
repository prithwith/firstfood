// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseState {
  int get bottomNavIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel? get currentUser => throw _privateConstructorUsedError;
  List<FooditemsModel> get foodItemsList => throw _privateConstructorUsedError;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseStateCopyWith<BaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<$Res> {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) then) =
      _$BaseStateCopyWithImpl<$Res, BaseState>;
  @useResult
  $Res call(
      {int bottomNavIndex,
      bool isLoading,
      UserModel? currentUser,
      List<FooditemsModel> foodItemsList});

  $UserModelCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$BaseStateCopyWithImpl<$Res, $Val extends BaseState>
    implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavIndex = null,
    Object? isLoading = null,
    Object? currentUser = freezed,
    Object? foodItemsList = null,
  }) {
    return _then(_value.copyWith(
      bottomNavIndex: null == bottomNavIndex
          ? _value.bottomNavIndex
          : bottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      foodItemsList: null == foodItemsList
          ? _value.foodItemsList
          : foodItemsList // ignore: cast_nullable_to_non_nullable
              as List<FooditemsModel>,
    ) as $Val);
  }

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseStateImplCopyWith<$Res>
    implements $BaseStateCopyWith<$Res> {
  factory _$$BaseStateImplCopyWith(
          _$BaseStateImpl value, $Res Function(_$BaseStateImpl) then) =
      __$$BaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bottomNavIndex,
      bool isLoading,
      UserModel? currentUser,
      List<FooditemsModel> foodItemsList});

  @override
  $UserModelCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$BaseStateImplCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$BaseStateImpl>
    implements _$$BaseStateImplCopyWith<$Res> {
  __$$BaseStateImplCopyWithImpl(
      _$BaseStateImpl _value, $Res Function(_$BaseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavIndex = null,
    Object? isLoading = null,
    Object? currentUser = freezed,
    Object? foodItemsList = null,
  }) {
    return _then(_$BaseStateImpl(
      bottomNavIndex: null == bottomNavIndex
          ? _value.bottomNavIndex
          : bottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      foodItemsList: null == foodItemsList
          ? _value._foodItemsList
          : foodItemsList // ignore: cast_nullable_to_non_nullable
              as List<FooditemsModel>,
    ));
  }
}

/// @nodoc

class _$BaseStateImpl extends _BaseState {
  const _$BaseStateImpl(
      {this.bottomNavIndex = 0,
      this.isLoading = false,
      this.currentUser,
      final List<FooditemsModel> foodItemsList = const []})
      : _foodItemsList = foodItemsList,
        super._();

  @override
  @JsonKey()
  final int bottomNavIndex;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final UserModel? currentUser;
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
    return 'BaseState(bottomNavIndex: $bottomNavIndex, isLoading: $isLoading, currentUser: $currentUser, foodItemsList: $foodItemsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStateImpl &&
            (identical(other.bottomNavIndex, bottomNavIndex) ||
                other.bottomNavIndex == bottomNavIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._foodItemsList, _foodItemsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomNavIndex, isLoading,
      currentUser, const DeepCollectionEquality().hash(_foodItemsList));

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseStateImplCopyWith<_$BaseStateImpl> get copyWith =>
      __$$BaseStateImplCopyWithImpl<_$BaseStateImpl>(this, _$identity);
}

abstract class _BaseState extends BaseState {
  const factory _BaseState(
      {final int bottomNavIndex,
      final bool isLoading,
      final UserModel? currentUser,
      final List<FooditemsModel> foodItemsList}) = _$BaseStateImpl;
  const _BaseState._() : super._();

  @override
  int get bottomNavIndex;
  @override
  bool get isLoading;
  @override
  UserModel? get currentUser;
  @override
  List<FooditemsModel> get foodItemsList;

  /// Create a copy of BaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseStateImplCopyWith<_$BaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
