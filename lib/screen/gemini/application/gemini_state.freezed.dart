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
  List<TextaiModel> get textChat =>
      throw _privateConstructorUsedError; // @Default([]) List textChat,
  bool get isTextloading => throw _privateConstructorUsedError;
  List<TextimageaiModel> get textAndImageChat =>
      throw _privateConstructorUsedError; // @Default([]) List textAndImageChat,
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
      {List<TextaiModel> textChat,
      bool isTextloading,
      List<TextimageaiModel> textAndImageChat,
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
    Object? textChat = null,
    Object? isTextloading = null,
    Object? textAndImageChat = null,
    Object? isTextWithImageloading = null,
  }) {
    return _then(_value.copyWith(
      textChat: null == textChat
          ? _value.textChat
          : textChat // ignore: cast_nullable_to_non_nullable
              as List<TextaiModel>,
      isTextloading: null == isTextloading
          ? _value.isTextloading
          : isTextloading // ignore: cast_nullable_to_non_nullable
              as bool,
      textAndImageChat: null == textAndImageChat
          ? _value.textAndImageChat
          : textAndImageChat // ignore: cast_nullable_to_non_nullable
              as List<TextimageaiModel>,
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
      {List<TextaiModel> textChat,
      bool isTextloading,
      List<TextimageaiModel> textAndImageChat,
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
    Object? textChat = null,
    Object? isTextloading = null,
    Object? textAndImageChat = null,
    Object? isTextWithImageloading = null,
  }) {
    return _then(_$GeminiStateImpl(
      textChat: null == textChat
          ? _value._textChat
          : textChat // ignore: cast_nullable_to_non_nullable
              as List<TextaiModel>,
      isTextloading: null == isTextloading
          ? _value.isTextloading
          : isTextloading // ignore: cast_nullable_to_non_nullable
              as bool,
      textAndImageChat: null == textAndImageChat
          ? _value._textAndImageChat
          : textAndImageChat // ignore: cast_nullable_to_non_nullable
              as List<TextimageaiModel>,
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
      {final List<TextaiModel> textChat = const [],
      this.isTextloading = false,
      final List<TextimageaiModel> textAndImageChat = const [],
      this.isTextWithImageloading = false})
      : _textChat = textChat,
        _textAndImageChat = textAndImageChat,
        super._();

  final List<TextaiModel> _textChat;
  @override
  @JsonKey()
  List<TextaiModel> get textChat {
    if (_textChat is EqualUnmodifiableListView) return _textChat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textChat);
  }

// @Default([]) List textChat,
  @override
  @JsonKey()
  final bool isTextloading;
  final List<TextimageaiModel> _textAndImageChat;
  @override
  @JsonKey()
  List<TextimageaiModel> get textAndImageChat {
    if (_textAndImageChat is EqualUnmodifiableListView)
      return _textAndImageChat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textAndImageChat);
  }

// @Default([]) List textAndImageChat,
  @override
  @JsonKey()
  final bool isTextWithImageloading;

  @override
  String toString() {
    return 'GeminiState(textChat: $textChat, isTextloading: $isTextloading, textAndImageChat: $textAndImageChat, isTextWithImageloading: $isTextWithImageloading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiStateImpl &&
            const DeepCollectionEquality().equals(other._textChat, _textChat) &&
            (identical(other.isTextloading, isTextloading) ||
                other.isTextloading == isTextloading) &&
            const DeepCollectionEquality()
                .equals(other._textAndImageChat, _textAndImageChat) &&
            (identical(other.isTextWithImageloading, isTextWithImageloading) ||
                other.isTextWithImageloading == isTextWithImageloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textChat),
      isTextloading,
      const DeepCollectionEquality().hash(_textAndImageChat),
      isTextWithImageloading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiStateImplCopyWith<_$GeminiStateImpl> get copyWith =>
      __$$GeminiStateImplCopyWithImpl<_$GeminiStateImpl>(this, _$identity);
}

abstract class _GeminiState extends GeminiState {
  const factory _GeminiState(
      {final List<TextaiModel> textChat,
      final bool isTextloading,
      final List<TextimageaiModel> textAndImageChat,
      final bool isTextWithImageloading}) = _$GeminiStateImpl;
  const _GeminiState._() : super._();

  @override
  List<TextaiModel> get textChat;
  @override // @Default([]) List textChat,
  bool get isTextloading;
  @override
  List<TextimageaiModel> get textAndImageChat;
  @override // @Default([]) List textAndImageChat,
  bool get isTextWithImageloading;
  @override
  @JsonKey(ignore: true)
  _$$GeminiStateImplCopyWith<_$GeminiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
