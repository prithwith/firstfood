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
  List<String> get favfoodItemsIdList => throw _privateConstructorUsedError;
  List<String> get favresturantsIdList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {List<String> favfoodItemsIdList, List<String> favresturantsIdList});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favfoodItemsIdList = null,
    Object? favresturantsIdList = null,
  }) {
    return _then(_value.copyWith(
      favfoodItemsIdList: null == favfoodItemsIdList
          ? _value.favfoodItemsIdList
          : favfoodItemsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favresturantsIdList: null == favresturantsIdList
          ? _value.favresturantsIdList
          : favresturantsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {List<String> favfoodItemsIdList, List<String> favresturantsIdList});
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
      _$FavoriteStateImpl _value, $Res Function(_$FavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favfoodItemsIdList = null,
    Object? favresturantsIdList = null,
  }) {
    return _then(_$FavoriteStateImpl(
      favfoodItemsIdList: null == favfoodItemsIdList
          ? _value._favfoodItemsIdList
          : favfoodItemsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favresturantsIdList: null == favresturantsIdList
          ? _value._favresturantsIdList
          : favresturantsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl extends _FavoriteState {
  const _$FavoriteStateImpl(
      {final List<String> favfoodItemsIdList = const [],
      final List<String> favresturantsIdList = const []})
      : _favfoodItemsIdList = favfoodItemsIdList,
        _favresturantsIdList = favresturantsIdList,
        super._();

  final List<String> _favfoodItemsIdList;
  @override
  @JsonKey()
  List<String> get favfoodItemsIdList {
    if (_favfoodItemsIdList is EqualUnmodifiableListView)
      return _favfoodItemsIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favfoodItemsIdList);
  }

  final List<String> _favresturantsIdList;
  @override
  @JsonKey()
  List<String> get favresturantsIdList {
    if (_favresturantsIdList is EqualUnmodifiableListView)
      return _favresturantsIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favresturantsIdList);
  }

  @override
  String toString() {
    return 'FavoriteState(favfoodItemsIdList: $favfoodItemsIdList, favresturantsIdList: $favresturantsIdList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favfoodItemsIdList, _favfoodItemsIdList) &&
            const DeepCollectionEquality()
                .equals(other._favresturantsIdList, _favresturantsIdList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favfoodItemsIdList),
      const DeepCollectionEquality().hash(_favresturantsIdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState extends FavoriteState {
  const factory _FavoriteState(
      {final List<String> favfoodItemsIdList,
      final List<String> favresturantsIdList}) = _$FavoriteStateImpl;
  const _FavoriteState._() : super._();

  @override
  List<String> get favfoodItemsIdList;
  @override
  List<String> get favresturantsIdList;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
