// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurants_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestaurantsState {
//  Model,
  List<dynamic> get categoryList => throw _privateConstructorUsedError;
  List<ResturantModel> get resturantsList => throw _privateConstructorUsedError;
  List<dynamic> get resturanstPopularitemList =>
      throw _privateConstructorUsedError;

  /// Create a copy of RestaurantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantsStateCopyWith<RestaurantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsStateCopyWith<$Res> {
  factory $RestaurantsStateCopyWith(
          RestaurantsState value, $Res Function(RestaurantsState) then) =
      _$RestaurantsStateCopyWithImpl<$Res, RestaurantsState>;
  @useResult
  $Res call(
      {List<dynamic> categoryList,
      List<ResturantModel> resturantsList,
      List<dynamic> resturanstPopularitemList});
}

/// @nodoc
class _$RestaurantsStateCopyWithImpl<$Res, $Val extends RestaurantsState>
    implements $RestaurantsStateCopyWith<$Res> {
  _$RestaurantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? resturantsList = null,
    Object? resturanstPopularitemList = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      resturantsList: null == resturantsList
          ? _value.resturantsList
          : resturantsList // ignore: cast_nullable_to_non_nullable
              as List<ResturantModel>,
      resturanstPopularitemList: null == resturanstPopularitemList
          ? _value.resturanstPopularitemList
          : resturanstPopularitemList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantsStateImplCopyWith<$Res>
    implements $RestaurantsStateCopyWith<$Res> {
  factory _$$RestaurantsStateImplCopyWith(_$RestaurantsStateImpl value,
          $Res Function(_$RestaurantsStateImpl) then) =
      __$$RestaurantsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> categoryList,
      List<ResturantModel> resturantsList,
      List<dynamic> resturanstPopularitemList});
}

/// @nodoc
class __$$RestaurantsStateImplCopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res, _$RestaurantsStateImpl>
    implements _$$RestaurantsStateImplCopyWith<$Res> {
  __$$RestaurantsStateImplCopyWithImpl(_$RestaurantsStateImpl _value,
      $Res Function(_$RestaurantsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestaurantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? resturantsList = null,
    Object? resturanstPopularitemList = null,
  }) {
    return _then(_$RestaurantsStateImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      resturantsList: null == resturantsList
          ? _value._resturantsList
          : resturantsList // ignore: cast_nullable_to_non_nullable
              as List<ResturantModel>,
      resturanstPopularitemList: null == resturanstPopularitemList
          ? _value._resturanstPopularitemList
          : resturanstPopularitemList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$RestaurantsStateImpl extends _RestaurantsState {
  const _$RestaurantsStateImpl(
      {final List<dynamic> categoryList = const [],
      final List<ResturantModel> resturantsList = const [],
      final List<dynamic> resturanstPopularitemList = const []})
      : _categoryList = categoryList,
        _resturantsList = resturantsList,
        _resturanstPopularitemList = resturanstPopularitemList,
        super._();

//  Model,
  final List<dynamic> _categoryList;
//  Model,
  @override
  @JsonKey()
  List<dynamic> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  final List<ResturantModel> _resturantsList;
  @override
  @JsonKey()
  List<ResturantModel> get resturantsList {
    if (_resturantsList is EqualUnmodifiableListView) return _resturantsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resturantsList);
  }

  final List<dynamic> _resturanstPopularitemList;
  @override
  @JsonKey()
  List<dynamic> get resturanstPopularitemList {
    if (_resturanstPopularitemList is EqualUnmodifiableListView)
      return _resturanstPopularitemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resturanstPopularitemList);
  }

  @override
  String toString() {
    return 'RestaurantsState(categoryList: $categoryList, resturantsList: $resturantsList, resturanstPopularitemList: $resturanstPopularitemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality()
                .equals(other._resturantsList, _resturantsList) &&
            const DeepCollectionEquality().equals(
                other._resturanstPopularitemList, _resturanstPopularitemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_resturantsList),
      const DeepCollectionEquality().hash(_resturanstPopularitemList));

  /// Create a copy of RestaurantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsStateImplCopyWith<_$RestaurantsStateImpl> get copyWith =>
      __$$RestaurantsStateImplCopyWithImpl<_$RestaurantsStateImpl>(
          this, _$identity);
}

abstract class _RestaurantsState extends RestaurantsState {
  const factory _RestaurantsState(
      {final List<dynamic> categoryList,
      final List<ResturantModel> resturantsList,
      final List<dynamic> resturanstPopularitemList}) = _$RestaurantsStateImpl;
  const _RestaurantsState._() : super._();

//  Model,
  @override
  List<dynamic> get categoryList;
  @override
  List<ResturantModel> get resturantsList;
  @override
  List<dynamic> get resturanstPopularitemList;

  /// Create a copy of RestaurantsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantsStateImplCopyWith<_$RestaurantsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
