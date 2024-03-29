// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositorySearchResponseImpl _$$RepositorySearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositorySearchResponseImpl(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map(
              (e) => RepositoryItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepositorySearchResponseImplToJson(
        _$RepositorySearchResponseImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
