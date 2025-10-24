// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeminiState {
  List<TextaiModel> get textChatList => throw _privateConstructorUsedError;
  bool get isTextloading => throw _privateConstructorUsedError;
  List<dynamic> get textAndImageChatList => throw _privateConstructorUsedError;
  bool get isTextWithImageloading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeminiStateCopyWith<GeminiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiStateCopyWith<$Res> {
  factory $GeminiStateCopyWith(
          GeminiState value, $Res Function(GeminiState) then) =
      _$GeminiStateCopyWithImpl<$Res, GeminiState>;
  @useResult
  $Res call(
      {List<TextaiModel> textChatList,
      bool isTextloading,
      List<dynamic> textAndImageChatList,
      bool isTextWithImageloading});
}

/// @nodoc
class _$GeminiStateCopyWithImpl<$Res, $Val extends GeminiState>
    implements $GeminiStateCopyWith<$Res> {
  _$GeminiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textChatList = null,
    Object? isTextloading = null,
    Object? textAndImageChatList = null,
    Object? isTextWithImageloading = null,
  }) {
    return _then(_value.copyWith(
      textChatList: null == textChatList
          ? _value.textChatList
          : textChatList // ignore: cast_nullable_to_non_nullable
              as List<TextaiModel>,
      isTextloading: null == isTextloading
          ? _value.isTextloading
          : isTextloading // ignore: cast_nullable_to_non_nullable
              as bool,
      textAndImageChatList: null == textAndImageChatList
          ? _value.textAndImageChatList
          : textAndImageChatList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isTextWithImageloading: null == isTextWithImageloading
          ? _value.isTextWithImageloading
          : isTextWithImageloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiStateImplCopyWith<$Res>
    implements $GeminiStateCopyWith<$Res> {
  factory _$$GeminiStateImplCopyWith(
          _$GeminiStateImpl value, $Res Function(_$GeminiStateImpl) then) =
      __$$GeminiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextaiModel> textChatList,
      bool isTextloading,
      List<dynamic> textAndImageChatList,
      bool isTextWithImageloading});
}

/// @nodoc
class __$$GeminiStateImplCopyWithImpl<$Res>
    extends _$GeminiStateCopyWithImpl<$Res, _$GeminiStateImpl>
    implements _$$GeminiStateImplCopyWith<$Res> {
  __$$GeminiStateImplCopyWithImpl(
      _$GeminiStateImpl _value, $Res Function(_$GeminiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textChatList = null,
    Object? isTextloading = null,
    Object? textAndImageChatList = null,
    Object? isTextWithImageloading = null,
  }) {
    return _then(_$GeminiStateImpl(
      textChatList: null == textChatList
          ? _value._textChatList
          : textChatList // ignore: cast_nullable_to_non_nullable
              as List<TextaiModel>,
      isTextloading: null == isTextloading
          ? _value.isTextloading
          : isTextloading // ignore: cast_nullable_to_non_nullable
              as bool,
      textAndImageChatList: null == textAndImageChatList
          ? _value._textAndImageChatList
          : textAndImageChatList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isTextWithImageloading: null == isTextWithImageloading
          ? _value.isTextWithImageloading
          : isTextWithImageloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GeminiStateImpl extends _GeminiState {
  const _$GeminiStateImpl(
      {final List<TextaiModel> textChatList = const [],
      this.isTextloading = false,
      final List<dynamic> textAndImageChatList = const [],
      this.isTextWithImageloading = false})
      : _textChatList = textChatList,
        _textAndImageChatList = textAndImageChatList,
        super._();

  final List<TextaiModel> _textChatList;
  @override
  @JsonKey()
  List<TextaiModel> get textChatList {
    if (_textChatList is EqualUnmodifiableListView) return _textChatList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textChatList);
  }

  @override
  @JsonKey()
  final bool isTextloading;
  final List<dynamic> _textAndImageChatList;
  @override
  @JsonKey()
  List<dynamic> get textAndImageChatList {
    if (_textAndImageChatList is EqualUnmodifiableListView)
      return _textAndImageChatList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textAndImageChatList);
  }

  @override
  @JsonKey()
  final bool isTextWithImageloading;

  @override
  String toString() {
    return 'GeminiState(textChatList: $textChatList, isTextloading: $isTextloading, textAndImageChatList: $textAndImageChatList, isTextWithImageloading: $isTextWithImageloading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiStateImpl &&
            const DeepCollectionEquality()
                .equals(other._textChatList, _textChatList) &&
            (identical(other.isTextloading, isTextloading) ||
                other.isTextloading == isTextloading) &&
            const DeepCollectionEquality()
                .equals(other._textAndImageChatList, _textAndImageChatList) &&
            (identical(other.isTextWithImageloading, isTextWithImageloading) ||
                other.isTextWithImageloading == isTextWithImageloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textChatList),
      isTextloading,
      const DeepCollectionEquality().hash(_textAndImageChatList),
      isTextWithImageloading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiStateImplCopyWith<_$GeminiStateImpl> get copyWith =>
      __$$GeminiStateImplCopyWithImpl<_$GeminiStateImpl>(this, _$identity);
}

abstract class _GeminiState extends GeminiState {
  const factory _GeminiState(
      {final List<TextaiModel> textChatList,
      final bool isTextloading,
      final List<dynamic> textAndImageChatList,
      final bool isTextWithImageloading}) = _$GeminiStateImpl;
  const _GeminiState._() : super._();

  @override
  List<TextaiModel> get textChatList;
  @override
  bool get isTextloading;
  @override
  List<dynamic> get textAndImageChatList;
  @override
  bool get isTextWithImageloading;
  @override
  @JsonKey(ignore: true)
  _$$GeminiStateImplCopyWith<_$GeminiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
