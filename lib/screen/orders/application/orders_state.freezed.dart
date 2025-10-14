// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersState {
  List<FooditemsModel> get recomendationList =>
      throw _privateConstructorUsedError;
  List<String> get cartItemList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {List<FooditemsModel> recomendationList, List<String> cartItemList});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recomendationList = null,
    Object? cartItemList = null,
  }) {
    return _then(_value.copyWith(
      recomendationList: null == recomendationList
          ? _value.recomendationList
          : recomendationList // ignore: cast_nullable_to_non_nullable
              as List<FooditemsModel>,
      cartItemList: null == cartItemList
          ? _value.cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersStateImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$OrdersStateImplCopyWith(
          _$OrdersStateImpl value, $Res Function(_$OrdersStateImpl) then) =
      __$$OrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FooditemsModel> recomendationList, List<String> cartItemList});
}

/// @nodoc
class __$$OrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrdersStateImpl>
    implements _$$OrdersStateImplCopyWith<$Res> {
  __$$OrdersStateImplCopyWithImpl(
      _$OrdersStateImpl _value, $Res Function(_$OrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recomendationList = null,
    Object? cartItemList = null,
  }) {
    return _then(_$OrdersStateImpl(
      recomendationList: null == recomendationList
          ? _value._recomendationList
          : recomendationList // ignore: cast_nullable_to_non_nullable
              as List<FooditemsModel>,
      cartItemList: null == cartItemList
          ? _value._cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OrdersStateImpl extends _OrdersState {
  const _$OrdersStateImpl(
      {final List<FooditemsModel> recomendationList = const [],
      final List<String> cartItemList = const []})
      : _recomendationList = recomendationList,
        _cartItemList = cartItemList,
        super._();

  final List<FooditemsModel> _recomendationList;
  @override
  @JsonKey()
  List<FooditemsModel> get recomendationList {
    if (_recomendationList is EqualUnmodifiableListView)
      return _recomendationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recomendationList);
  }

  final List<String> _cartItemList;
  @override
  @JsonKey()
  List<String> get cartItemList {
    if (_cartItemList is EqualUnmodifiableListView) return _cartItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItemList);
  }

  @override
  String toString() {
    return 'OrdersState(recomendationList: $recomendationList, cartItemList: $cartItemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recomendationList, _recomendationList) &&
            const DeepCollectionEquality()
                .equals(other._cartItemList, _cartItemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recomendationList),
      const DeepCollectionEquality().hash(_cartItemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      __$$OrdersStateImplCopyWithImpl<_$OrdersStateImpl>(this, _$identity);
}

abstract class _OrdersState extends OrdersState {
  const factory _OrdersState(
      {final List<FooditemsModel> recomendationList,
      final List<String> cartItemList}) = _$OrdersStateImpl;
  const _OrdersState._() : super._();

  @override
  List<FooditemsModel> get recomendationList;
  @override
  List<String> get cartItemList;
  @override
  @JsonKey(ignore: true)
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
