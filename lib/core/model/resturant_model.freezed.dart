// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resturant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResturantModel _$ResturantModelFromJson(Map<String, dynamic> json) {
  return _ResturantModel.fromJson(json);
}

/// @nodoc
mixin _$ResturantModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'allDishes')
  List<RecommendationModel> get allDishes => throw _privateConstructorUsedError;

  /// Serializes this ResturantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResturantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResturantModelCopyWith<ResturantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResturantModelCopyWith<$Res> {
  factory $ResturantModelCopyWith(
          ResturantModel value, $Res Function(ResturantModel) then) =
      _$ResturantModelCopyWithImpl<$Res, ResturantModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'allDishes') List<RecommendationModel> allDishes});
}

/// @nodoc
class _$ResturantModelCopyWithImpl<$Res, $Val extends ResturantModel>
    implements $ResturantModelCopyWith<$Res> {
  _$ResturantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResturantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? allDishes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      allDishes: null == allDishes
          ? _value.allDishes
          : allDishes // ignore: cast_nullable_to_non_nullable
              as List<RecommendationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResturantModelImplCopyWith<$Res>
    implements $ResturantModelCopyWith<$Res> {
  factory _$$ResturantModelImplCopyWith(_$ResturantModelImpl value,
          $Res Function(_$ResturantModelImpl) then) =
      __$$ResturantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'allDishes') List<RecommendationModel> allDishes});
}

/// @nodoc
class __$$ResturantModelImplCopyWithImpl<$Res>
    extends _$ResturantModelCopyWithImpl<$Res, _$ResturantModelImpl>
    implements _$$ResturantModelImplCopyWith<$Res> {
  __$$ResturantModelImplCopyWithImpl(
      _$ResturantModelImpl _value, $Res Function(_$ResturantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResturantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? allDishes = null,
  }) {
    return _then(_$ResturantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      allDishes: null == allDishes
          ? _value._allDishes
          : allDishes // ignore: cast_nullable_to_non_nullable
              as List<RecommendationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResturantModelImpl implements _ResturantModel {
  const _$ResturantModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'allDishes')
      final List<RecommendationModel> allDishes = const []})
      : _allDishes = allDishes;

  factory _$ResturantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResturantModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  final List<RecommendationModel> _allDishes;
  @override
  @JsonKey(name: 'allDishes')
  List<RecommendationModel> get allDishes {
    if (_allDishes is EqualUnmodifiableListView) return _allDishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allDishes);
  }

  @override
  String toString() {
    return 'ResturantModel(id: $id, name: $name, allDishes: $allDishes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResturantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._allDishes, _allDishes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_allDishes));

  /// Create a copy of ResturantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResturantModelImplCopyWith<_$ResturantModelImpl> get copyWith =>
      __$$ResturantModelImplCopyWithImpl<_$ResturantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResturantModelImplToJson(
      this,
    );
  }
}

abstract class _ResturantModel implements ResturantModel {
  const factory _ResturantModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'allDishes')
      final List<RecommendationModel> allDishes}) = _$ResturantModelImpl;

  factory _ResturantModel.fromJson(Map<String, dynamic> json) =
      _$ResturantModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'allDishes')
  List<RecommendationModel> get allDishes;

  /// Create a copy of ResturantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResturantModelImplCopyWith<_$ResturantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
