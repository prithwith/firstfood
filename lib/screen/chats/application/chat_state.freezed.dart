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

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      List<ChatModel> userChatsList});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoading = null,
    Object? isChatLoading = null,
    Object? usersList = null,
    Object? userChatsList = null,
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
      List<ChatModel> userChatsList});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoading = null,
    Object? isChatLoading = null,
    Object? usersList = null,
    Object? userChatsList = null,
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
    ));
  }
}

/// @nodoc

class _$ChatStateImpl extends _ChatState {
  const _$ChatStateImpl(
      {this.isUserLoading = false,
      this.isChatLoading = false,
      final List<ChatusersModel> usersList = const [],
      final List<ChatModel> userChatsList = const []})
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
  String toString() {
    return 'ChatState(isUserLoading: $isUserLoading, isChatLoading: $isChatLoading, usersList: $usersList, userChatsList: $userChatsList)';
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
                .equals(other._userChatsList, _userChatsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isUserLoading,
      isChatLoading,
      const DeepCollectionEquality().hash(_usersList),
      const DeepCollectionEquality().hash(_userChatsList));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final List<ChatModel> userChatsList}) = _$ChatStateImpl;
  const _ChatState._() : super._();

  @override
  bool get isUserLoading;
  @override
  bool get isChatLoading;
  @override
  List<ChatusersModel> get usersList;
  @override
  List<ChatModel> get userChatsList;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
