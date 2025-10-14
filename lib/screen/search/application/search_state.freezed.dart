// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
// UserModel? user,
  List<dynamic> get allFooddetailsList => throw _privateConstructorUsedError;
  List<dynamic> get searchdataList => throw _privateConstructorUsedError;
  List<dynamic> get searchHistoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<dynamic> allFooddetailsList,
      List<dynamic> searchdataList,
      List<dynamic> searchHistoryList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allFooddetailsList = null,
    Object? searchdataList = null,
    Object? searchHistoryList = null,
  }) {
    return _then(_value.copyWith(
      allFooddetailsList: null == allFooddetailsList
          ? _value.allFooddetailsList
          : allFooddetailsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchdataList: null == searchdataList
          ? _value.searchdataList
          : searchdataList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchHistoryList: null == searchHistoryList
          ? _value.searchHistoryList
          : searchHistoryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> allFooddetailsList,
      List<dynamic> searchdataList,
      List<dynamic> searchHistoryList});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allFooddetailsList = null,
    Object? searchdataList = null,
    Object? searchHistoryList = null,
  }) {
    return _then(_$SearchStateImpl(
      allFooddetailsList: null == allFooddetailsList
          ? _value._allFooddetailsList
          : allFooddetailsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchdataList: null == searchdataList
          ? _value._searchdataList
          : searchdataList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchHistoryList: null == searchHistoryList
          ? _value._searchHistoryList
          : searchHistoryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl extends _SearchState {
  const _$SearchStateImpl(
      {final List<dynamic> allFooddetailsList = const [],
      final List<dynamic> searchdataList = const [],
      final List<dynamic> searchHistoryList = const []})
      : _allFooddetailsList = allFooddetailsList,
        _searchdataList = searchdataList,
        _searchHistoryList = searchHistoryList,
        super._();

// UserModel? user,
  final List<dynamic> _allFooddetailsList;
// UserModel? user,
  @override
  @JsonKey()
  List<dynamic> get allFooddetailsList {
    if (_allFooddetailsList is EqualUnmodifiableListView)
      return _allFooddetailsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allFooddetailsList);
  }

  final List<dynamic> _searchdataList;
  @override
  @JsonKey()
  List<dynamic> get searchdataList {
    if (_searchdataList is EqualUnmodifiableListView) return _searchdataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchdataList);
  }

  final List<dynamic> _searchHistoryList;
  @override
  @JsonKey()
  List<dynamic> get searchHistoryList {
    if (_searchHistoryList is EqualUnmodifiableListView)
      return _searchHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistoryList);
  }

  @override
  String toString() {
    return 'SearchState(allFooddetailsList: $allFooddetailsList, searchdataList: $searchdataList, searchHistoryList: $searchHistoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allFooddetailsList, _allFooddetailsList) &&
            const DeepCollectionEquality()
                .equals(other._searchdataList, _searchdataList) &&
            const DeepCollectionEquality()
                .equals(other._searchHistoryList, _searchHistoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allFooddetailsList),
      const DeepCollectionEquality().hash(_searchdataList),
      const DeepCollectionEquality().hash(_searchHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {final List<dynamic> allFooddetailsList,
      final List<dynamic> searchdataList,
      final List<dynamic> searchHistoryList}) = _$SearchStateImpl;
  const _SearchState._() : super._();

  @override // UserModel? user,
  List<dynamic> get allFooddetailsList;
  @override
  List<dynamic> get searchdataList;
  @override
  List<dynamic> get searchHistoryList;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
