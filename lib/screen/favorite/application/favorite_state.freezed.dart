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
// UserModel? user,
  bool get isFavorite => throw _privateConstructorUsedError;
  List<dynamic> get foodItemsList => throw _privateConstructorUsedError;
  List<dynamic> get resturantsList => throw _privateConstructorUsedError;

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
      {bool isFavorite,
      List<dynamic> foodItemsList,
      List<dynamic> resturantsList});
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
    Object? isFavorite = null,
    Object? foodItemsList = null,
    Object? resturantsList = null,
  }) {
    return _then(_value.copyWith(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      foodItemsList: null == foodItemsList
          ? _value.foodItemsList
          : foodItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      resturantsList: null == resturantsList
          ? _value.resturantsList
          : resturantsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      {bool isFavorite,
      List<dynamic> foodItemsList,
      List<dynamic> resturantsList});
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
    Object? isFavorite = null,
    Object? foodItemsList = null,
    Object? resturantsList = null,
  }) {
    return _then(_$FavoriteStateImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      foodItemsList: null == foodItemsList
          ? _value._foodItemsList
          : foodItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      resturantsList: null == resturantsList
          ? _value._resturantsList
          : resturantsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl extends _FavoriteState {
  const _$FavoriteStateImpl(
      {this.isFavorite = false,
      final List<dynamic> foodItemsList = const [],
      final List<dynamic> resturantsList = const []})
      : _foodItemsList = foodItemsList,
        _resturantsList = resturantsList,
        super._();

// UserModel? user,
  @override
  @JsonKey()
  final bool isFavorite;
  final List<dynamic> _foodItemsList;
  @override
  @JsonKey()
  List<dynamic> get foodItemsList {
    if (_foodItemsList is EqualUnmodifiableListView) return _foodItemsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodItemsList);
  }

  final List<dynamic> _resturantsList;
  @override
  @JsonKey()
  List<dynamic> get resturantsList {
    if (_resturantsList is EqualUnmodifiableListView) return _resturantsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resturantsList);
  }

  @override
  String toString() {
    return 'FavoriteState(isFavorite: $isFavorite, foodItemsList: $foodItemsList, resturantsList: $resturantsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality()
                .equals(other._foodItemsList, _foodItemsList) &&
            const DeepCollectionEquality()
                .equals(other._resturantsList, _resturantsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFavorite,
      const DeepCollectionEquality().hash(_foodItemsList),
      const DeepCollectionEquality().hash(_resturantsList));

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
      {final bool isFavorite,
      final List<dynamic> foodItemsList,
      final List<dynamic> resturantsList}) = _$FavoriteStateImpl;
  const _FavoriteState._() : super._();

// UserModel? user,
  @override
  bool get isFavorite;
  @override
  List<dynamic> get foodItemsList;
  @override
  List<dynamic> get resturantsList;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
