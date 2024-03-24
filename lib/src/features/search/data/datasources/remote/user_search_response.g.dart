// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSearchResponseImpl _$$UserSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSearchResponseImpl(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => UserItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserSearchResponseImplToJson(
        _$UserSearchResponseImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
