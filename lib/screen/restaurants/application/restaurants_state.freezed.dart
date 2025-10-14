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
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;
  List<ResturantModel> get resturantsList => throw _privateConstructorUsedError;
  List<String> get addonItemsIdList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {List<CategoryModel> categoryList,
      List<ResturantModel> resturantsList,
      List<String> addonItemsIdList});
}

/// @nodoc
class _$RestaurantsStateCopyWithImpl<$Res, $Val extends RestaurantsState>
    implements $RestaurantsStateCopyWith<$Res> {
  _$RestaurantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? resturantsList = null,
    Object? addonItemsIdList = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      resturantsList: null == resturantsList
          ? _value.resturantsList
          : resturantsList // ignore: cast_nullable_to_non_nullable
              as List<ResturantModel>,
      addonItemsIdList: null == addonItemsIdList
          ? _value.addonItemsIdList
          : addonItemsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {List<CategoryModel> categoryList,
      List<ResturantModel> resturantsList,
      List<String> addonItemsIdList});
}

/// @nodoc
class __$$RestaurantsStateImplCopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res, _$RestaurantsStateImpl>
    implements _$$RestaurantsStateImplCopyWith<$Res> {
  __$$RestaurantsStateImplCopyWithImpl(_$RestaurantsStateImpl _value,
      $Res Function(_$RestaurantsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? resturantsList = null,
    Object? addonItemsIdList = null,
  }) {
    return _then(_$RestaurantsStateImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      resturantsList: null == resturantsList
          ? _value._resturantsList
          : resturantsList // ignore: cast_nullable_to_non_nullable
              as List<ResturantModel>,
      addonItemsIdList: null == addonItemsIdList
          ? _value._addonItemsIdList
          : addonItemsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RestaurantsStateImpl extends _RestaurantsState {
  const _$RestaurantsStateImpl(
      {final List<CategoryModel> categoryList = const [],
      final List<ResturantModel> resturantsList = const [],
      final List<String> addonItemsIdList = const []})
      : _categoryList = categoryList,
        _resturantsList = resturantsList,
        _addonItemsIdList = addonItemsIdList,
        super._();

  final List<CategoryModel> _categoryList;
  @override
  @JsonKey()
  List<CategoryModel> get categoryList {
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

  final List<String> _addonItemsIdList;
  @override
  @JsonKey()
  List<String> get addonItemsIdList {
    if (_addonItemsIdList is EqualUnmodifiableListView)
      return _addonItemsIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addonItemsIdList);
  }

  @override
  String toString() {
    return 'RestaurantsState(categoryList: $categoryList, resturantsList: $resturantsList, addonItemsIdList: $addonItemsIdList)';
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
            const DeepCollectionEquality()
                .equals(other._addonItemsIdList, _addonItemsIdList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_resturantsList),
      const DeepCollectionEquality().hash(_addonItemsIdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsStateImplCopyWith<_$RestaurantsStateImpl> get copyWith =>
      __$$RestaurantsStateImplCopyWithImpl<_$RestaurantsStateImpl>(
          this, _$identity);
}

abstract class _RestaurantsState extends RestaurantsState {
  const factory _RestaurantsState(
      {final List<CategoryModel> categoryList,
      final List<ResturantModel> resturantsList,
      final List<String> addonItemsIdList}) = _$RestaurantsStateImpl;
  const _RestaurantsState._() : super._();

  @override
  List<CategoryModel> get categoryList;
  @override
  List<ResturantModel> get resturantsList;
  @override
  List<String> get addonItemsIdList;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantsStateImplCopyWith<_$RestaurantsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
