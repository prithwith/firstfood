// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  bool get isUserLoading => throw _privateConstructorUsedError;
  bool get isChatLoading => throw _privateConstructorUsedError;
  List<ChatusersModel> get usersList => throw _privateConstructorUsedError;
  List<ChatModel> get userChatsList => throw _privateConstructorUsedError;
  String get recordPath => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isUserLoading,
      bool isChatLoading,
      List<ChatusersModel> usersList,
      List<ChatModel> userChatsList,
      String recordPath,
      bool isRecording,
      bool isPlaying});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoading = null,
    Object? isChatLoading = null,
    Object? usersList = null,
    Object? userChatsList = null,
    Object? recordPath = null,
    Object? isRecording = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      isUserLoading: null == isUserLoading
          ? _value.isUserLoading
          : isUserLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isChatLoading: null == isChatLoading
          ? _value.isChatLoading
          : isChatLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      usersList: null == usersList
          ? _value.usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<ChatusersModel>,
      userChatsList: null == userChatsList
          ? _value.userChatsList
          : userChatsList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      recordPath: null == recordPath
          ? _value.recordPath
          : recordPath // ignore: cast_nullable_to_non_nullable
              as String,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isUserLoading,
      bool isChatLoading,
      List<ChatusersModel> usersList,
      List<ChatModel> userChatsList,
      String recordPath,
      bool isRecording,
      bool isPlaying});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoading = null,
    Object? isChatLoading = null,
    Object? usersList = null,
    Object? userChatsList = null,
    Object? recordPath = null,
    Object? isRecording = null,
    Object? isPlaying = null,
  }) {
    return _then(_$ChatStateImpl(
      isUserLoading: null == isUserLoading
          ? _value.isUserLoading
          : isUserLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isChatLoading: null == isChatLoading
          ? _value.isChatLoading
          : isChatLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<ChatusersModel>,
      userChatsList: null == userChatsList
          ? _value._userChatsList
          : userChatsList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      recordPath: null == recordPath
          ? _value.recordPath
          : recordPath // ignore: cast_nullable_to_non_nullable
              as String,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl extends _ChatState {
  const _$ChatStateImpl(
      {this.isUserLoading = false,
      this.isChatLoading = false,
      final List<ChatusersModel> usersList = const [],
      final List<ChatModel> userChatsList = const [],
      this.recordPath = "",
      this.isRecording = false,
      this.isPlaying = false})
      : _usersList = usersList,
        _userChatsList = userChatsList,
        super._();

  @override
  @JsonKey()
  final bool isUserLoading;
  @override
  @JsonKey()
  final bool isChatLoading;
  final List<ChatusersModel> _usersList;
  @override
  @JsonKey()
  List<ChatusersModel> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  final List<ChatModel> _userChatsList;
  @override
  @JsonKey()
  List<ChatModel> get userChatsList {
    if (_userChatsList is EqualUnmodifiableListView) return _userChatsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userChatsList);
  }

  @override
  @JsonKey()
  final String recordPath;
  @override
  @JsonKey()
  final bool isRecording;
  @override
  @JsonKey()
  final bool isPlaying;

  @override
  String toString() {
    return 'ChatState(isUserLoading: $isUserLoading, isChatLoading: $isChatLoading, usersList: $usersList, userChatsList: $userChatsList, recordPath: $recordPath, isRecording: $isRecording, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.isUserLoading, isUserLoading) ||
                other.isUserLoading == isUserLoading) &&
            (identical(other.isChatLoading, isChatLoading) ||
                other.isChatLoading == isChatLoading) &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList) &&
            const DeepCollectionEquality()
                .equals(other._userChatsList, _userChatsList) &&
            (identical(other.recordPath, recordPath) ||
                other.recordPath == recordPath) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isUserLoading,
      isChatLoading,
      const DeepCollectionEquality().hash(_usersList),
      const DeepCollectionEquality().hash(_userChatsList),
      recordPath,
      isRecording,
      isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState extends ChatState {
  const factory _ChatState(
      {final bool isUserLoading,
      final bool isChatLoading,
      final List<ChatusersModel> usersList,
      final List<ChatModel> userChatsList,
      final String recordPath,
      final bool isRecording,
      final bool isPlaying}) = _$ChatStateImpl;
  const _ChatState._() : super._();

  @override
  bool get isUserLoading;
  @override
  bool get isChatLoading;
  @override
  List<ChatusersModel> get usersList;
  @override
  List<ChatModel> get userChatsList;
  @override
  String get recordPath;
  @override
  bool get isRecording;
  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
