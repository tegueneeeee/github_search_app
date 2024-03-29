// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositorySearchResponse _$RepositorySearchResponseFromJson(
    Map<String, dynamic> json) {
  return _RepositorySearchResponse.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearchResponse {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<RepositoryItemResponse> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchResponseCopyWith<RepositorySearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchResponseCopyWith<$Res> {
  factory $RepositorySearchResponseCopyWith(RepositorySearchResponse value,
          $Res Function(RepositorySearchResponse) then) =
      _$RepositorySearchResponseCopyWithImpl<$Res, RepositorySearchResponse>;
  @useResult
  $Res call(
      {int totalCount,
      bool incompleteResults,
      List<RepositoryItemResponse> items});
}

/// @nodoc
class _$RepositorySearchResponseCopyWithImpl<$Res,
        $Val extends RepositorySearchResponse>
    implements $RepositorySearchResponseCopyWith<$Res> {
  _$RepositorySearchResponseCopyWithImpl(this._value, this._then);

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
              as List<RepositoryItemResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchResponseImplCopyWith<$Res>
    implements $RepositorySearchResponseCopyWith<$Res> {
  factory _$$RepositorySearchResponseImplCopyWith(
          _$RepositorySearchResponseImpl value,
          $Res Function(_$RepositorySearchResponseImpl) then) =
      __$$RepositorySearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCount,
      bool incompleteResults,
      List<RepositoryItemResponse> items});
}

/// @nodoc
class __$$RepositorySearchResponseImplCopyWithImpl<$Res>
    extends _$RepositorySearchResponseCopyWithImpl<$Res,
        _$RepositorySearchResponseImpl>
    implements _$$RepositorySearchResponseImplCopyWith<$Res> {
  __$$RepositorySearchResponseImplCopyWithImpl(
      _$RepositorySearchResponseImpl _value,
      $Res Function(_$RepositorySearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$RepositorySearchResponseImpl(
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
              as List<RepositoryItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchResponseImpl implements _RepositorySearchResponse {
  const _$RepositorySearchResponseImpl(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<RepositoryItemResponse> items})
      : _items = items;

  factory _$RepositorySearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositorySearchResponseImplFromJson(json);

  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  final List<RepositoryItemResponse> _items;
  @override
  List<RepositoryItemResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RepositorySearchResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchResponseImpl &&
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
  _$$RepositorySearchResponseImplCopyWith<_$RepositorySearchResponseImpl>
      get copyWith => __$$RepositorySearchResponseImplCopyWithImpl<
          _$RepositorySearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchResponseImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearchResponse implements RepositorySearchResponse {
  const factory _RepositorySearchResponse(
          {required final int totalCount,
          required final bool incompleteResults,
          required final List<RepositoryItemResponse> items}) =
      _$RepositorySearchResponseImpl;

  factory _RepositorySearchResponse.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchResponseImpl.fromJson;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<RepositoryItemResponse> get items;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchResponseImplCopyWith<_$RepositorySearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
