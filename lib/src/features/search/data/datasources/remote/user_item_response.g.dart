// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserItemResponseImpl _$$UserItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserItemResponseImpl(
      login: json['login'] as String,
      id: json['id'] as int,
      nodeId: json['nodeId'] as String,
      avatarUrl: json['avatarUrl'] as String,
      gravatarId: json['gravatarId'] as String,
      url: json['url'] as String,
      htmlUrl: json['htmlUrl'] as String,
      followersUrl: json['followersUrl'] as String,
      followingUrl: json['followingUrl'] as String,
      gistsUrl: json['gistsUrl'] as String,
      starredUrl: json['starredUrl'] as String,
      subscriptionsUrl: json['subscriptionsUrl'] as String,
      organizationsUrl: json['organizationsUrl'] as String,
      reposUrl: json['reposUrl'] as String,
      eventsUrl: json['eventsUrl'] as String,
      receivedEventsUrl: json['receivedEventsUrl'] as String,
      type: json['type'] as String,
      siteAdmin: json['siteAdmin'] as bool,
    );

Map<String, dynamic> _$$UserItemResponseImplToJson(
        _$UserItemResponseImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'gravatarId': instance.gravatarId,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'followersUrl': instance.followersUrl,
      'followingUrl': instance.followingUrl,
      'gistsUrl': instance.gistsUrl,
      'starredUrl': instance.starredUrl,
      'subscriptionsUrl': instance.subscriptionsUrl,
      'organizationsUrl': instance.organizationsUrl,
      'reposUrl': instance.reposUrl,
      'eventsUrl': instance.eventsUrl,
      'receivedEventsUrl': instance.receivedEventsUrl,
      'type': instance.type,
      'siteAdmin': instance.siteAdmin,
    };
