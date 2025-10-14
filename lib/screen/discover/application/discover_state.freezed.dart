// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverState {
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isdiscoverLoading => throw _privateConstructorUsedError;
  List<SliderImageModel> get sliderList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call(
      {int currentIndex,
      bool isdiscoverLoading,
      List<SliderImageModel> sliderList});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? isdiscoverLoading = null,
    Object? sliderList = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isdiscoverLoading: null == isdiscoverLoading
          ? _value.isdiscoverLoading
          : isdiscoverLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sliderList: null == sliderList
          ? _value.sliderList
          : sliderList // ignore: cast_nullable_to_non_nullable
              as List<SliderImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      bool isdiscoverLoading,
      List<SliderImageModel> sliderList});
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? isdiscoverLoading = null,
    Object? sliderList = null,
  }) {
    return _then(_$DiscoverStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isdiscoverLoading: null == isdiscoverLoading
          ? _value.isdiscoverLoading
          : isdiscoverLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sliderList: null == sliderList
          ? _value._sliderList
          : sliderList // ignore: cast_nullable_to_non_nullable
              as List<SliderImageModel>,
    ));
  }
}

/// @nodoc

class _$DiscoverStateImpl extends _DiscoverState {
  const _$DiscoverStateImpl(
      {this.currentIndex = 0,
      this.isdiscoverLoading = false,
      final List<SliderImageModel> sliderList = const []})
      : _sliderList = sliderList,
        super._();

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final bool isdiscoverLoading;
  final List<SliderImageModel> _sliderList;
  @override
  @JsonKey()
  List<SliderImageModel> get sliderList {
    if (_sliderList is EqualUnmodifiableListView) return _sliderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliderList);
  }

  @override
  String toString() {
    return 'DiscoverState(currentIndex: $currentIndex, isdiscoverLoading: $isdiscoverLoading, sliderList: $sliderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isdiscoverLoading, isdiscoverLoading) ||
                other.isdiscoverLoading == isdiscoverLoading) &&
            const DeepCollectionEquality()
                .equals(other._sliderList, _sliderList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, isdiscoverLoading,
      const DeepCollectionEquality().hash(_sliderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);
}

abstract class _DiscoverState extends DiscoverState {
  const factory _DiscoverState(
      {final int currentIndex,
      final bool isdiscoverLoading,
      final List<SliderImageModel> sliderList}) = _$DiscoverStateImpl;
  const _DiscoverState._() : super._();

  @override
  int get currentIndex;
  @override
  bool get isdiscoverLoading;
  @override
  List<SliderImageModel> get sliderList;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
