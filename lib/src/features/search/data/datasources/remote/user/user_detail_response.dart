import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user/user_item_interface.dart';

part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
class UserDetailResponse
    with _$UserDetailResponse
    implements UserItemInterface {
  const factory UserDetailResponse({
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
    String? name,
    String? company,
    String? blog,
    String? location,
    String? email,
    bool? hireable,
    String? bio,
    String? twitterUsername,
    required int publicRepos,
    int? publicGists,
    required int followers,
    required int following,
    required String createdAt,
    required String updatedAt,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, Object?> json) =>
      _$UserDetailResponseFromJson(json);
}
