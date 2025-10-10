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
  String get selectedAddmoreValue => throw _privateConstructorUsedError;
  String get selectedPackagesValue => throw _privateConstructorUsedError;

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
      {List<CategoryModel> categoryList,
      List<ResturantModel> resturantsList,
      String selectedAddmoreValue,
      String selectedPackagesValue});
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
    Object? selectedAddmoreValue = null,
    Object? selectedPackagesValue = null,
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
      selectedAddmoreValue: null == selectedAddmoreValue
          ? _value.selectedAddmoreValue
          : selectedAddmoreValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPackagesValue: null == selectedPackagesValue
          ? _value.selectedPackagesValue
          : selectedPackagesValue // ignore: cast_nullable_to_non_nullable
              as String,
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
      String selectedAddmoreValue,
      String selectedPackagesValue});
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
    Object? selectedAddmoreValue = null,
    Object? selectedPackagesValue = null,
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
      selectedAddmoreValue: null == selectedAddmoreValue
          ? _value.selectedAddmoreValue
          : selectedAddmoreValue // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPackagesValue: null == selectedPackagesValue
          ? _value.selectedPackagesValue
          : selectedPackagesValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestaurantsStateImpl extends _RestaurantsState {
  const _$RestaurantsStateImpl(
      {final List<CategoryModel> categoryList = const [],
      final List<ResturantModel> resturantsList = const [],
      this.selectedAddmoreValue = "",
      this.selectedPackagesValue = ""})
      : _categoryList = categoryList,
        _resturantsList = resturantsList,
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

  @override
  @JsonKey()
  final String selectedAddmoreValue;
  @override
  @JsonKey()
  final String selectedPackagesValue;

  @override
  String toString() {
    return 'RestaurantsState(categoryList: $categoryList, resturantsList: $resturantsList, selectedAddmoreValue: $selectedAddmoreValue, selectedPackagesValue: $selectedPackagesValue)';
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
            (identical(other.selectedAddmoreValue, selectedAddmoreValue) ||
                other.selectedAddmoreValue == selectedAddmoreValue) &&
            (identical(other.selectedPackagesValue, selectedPackagesValue) ||
                other.selectedPackagesValue == selectedPackagesValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_resturantsList),
      selectedAddmoreValue,
      selectedPackagesValue);

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
      {final List<CategoryModel> categoryList,
      final List<ResturantModel> resturantsList,
      final String selectedAddmoreValue,
      final String selectedPackagesValue}) = _$RestaurantsStateImpl;
  const _RestaurantsState._() : super._();

  @override
  List<CategoryModel> get categoryList;
  @override
  List<ResturantModel> get resturantsList;
  @override
  String get selectedAddmoreValue;
  @override
  String get selectedPackagesValue;

  /// Create a copy of RestaurantsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantsStateImplCopyWith<_$RestaurantsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
