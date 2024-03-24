// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSearchResponseImpl _$$UserSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSearchResponseImpl(
      totalCount: json['totalCount'] as int,
      incompleteResults: json['incompleteResults'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => UserItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserSearchResponseImplToJson(
        _$UserSearchResponseImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'incompleteResults': instance.incompleteResults,
      'items': instance.items,
    };
