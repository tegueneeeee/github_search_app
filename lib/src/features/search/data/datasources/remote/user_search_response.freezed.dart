// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSearchResponse _$UserSearchResponseFromJson(Map<String, dynamic> json) {
  return _UserSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$UserSearchResponse {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<UserItemResponse> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSearchResponseCopyWith<UserSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchResponseCopyWith<$Res> {
  factory $UserSearchResponseCopyWith(
          UserSearchResponse value, $Res Function(UserSearchResponse) then) =
      _$UserSearchResponseCopyWithImpl<$Res, UserSearchResponse>;
  @useResult
  $Res call(
      {int totalCount, bool incompleteResults, List<UserItemResponse> items});
}

/// @nodoc
class _$UserSearchResponseCopyWithImpl<$Res, $Val extends UserSearchResponse>
    implements $UserSearchResponseCopyWith<$Res> {
  _$UserSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItemResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSearchResponseImplCopyWith<$Res>
    implements $UserSearchResponseCopyWith<$Res> {
  factory _$$UserSearchResponseImplCopyWith(_$UserSearchResponseImpl value,
          $Res Function(_$UserSearchResponseImpl) then) =
      __$$UserSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCount, bool incompleteResults, List<UserItemResponse> items});
}

/// @nodoc
class __$$UserSearchResponseImplCopyWithImpl<$Res>
    extends _$UserSearchResponseCopyWithImpl<$Res, _$UserSearchResponseImpl>
    implements _$$UserSearchResponseImplCopyWith<$Res> {
  __$$UserSearchResponseImplCopyWithImpl(_$UserSearchResponseImpl _value,
      $Res Function(_$UserSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$UserSearchResponseImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSearchResponseImpl implements _UserSearchResponse {
  const _$UserSearchResponseImpl(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<UserItemResponse> items})
      : _items = items;

  factory _$UserSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSearchResponseImplFromJson(json);

  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  final List<UserItemResponse> _items;
  @override
  List<UserItemResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'UserSearchResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchResponseImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchResponseImplCopyWith<_$UserSearchResponseImpl> get copyWith =>
      __$$UserSearchResponseImplCopyWithImpl<_$UserSearchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _UserSearchResponse implements UserSearchResponse {
  const factory _UserSearchResponse(
      {required final int totalCount,
      required final bool incompleteResults,
      required final List<UserItemResponse> items}) = _$UserSearchResponseImpl;

  factory _UserSearchResponse.fromJson(Map<String, dynamic> json) =
      _$UserSearchResponseImpl.fromJson;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<UserItemResponse> get items;
  @override
  @JsonKey(ignore: true)
  _$$UserSearchResponseImplCopyWith<_$UserSearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
