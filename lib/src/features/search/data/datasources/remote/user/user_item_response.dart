import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user_item_interface.dart';

part 'user_item_response.freezed.dart';
part 'user_item_response.g.dart';

@freezed
class UserItemResponse with _$UserItemResponse implements UserItemInterface {
  const factory UserItemResponse({
    required String login,
    required int id,
    required String nodeId,
    required String avatarUrl,
    required String gravatarId,
    required String url,
    required String htmlUrl,
    required String followersUrl,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required String subscriptionsUrl,
    required String organizationsUrl,
    required String reposUrl,
    required String eventsUrl,
    required String receivedEventsUrl,
    required String type,
    required bool siteAdmin,
  }) = _UserItemResponse;

  factory UserItemResponse.fromJson(Map<String, Object?> json) =>
      _$UserItemResponseFromJson(json);
}
