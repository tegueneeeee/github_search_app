import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_owner_response.freezed.dart';
part 'repository_owner_response.g.dart';

@freezed
class RepositoryOwnerResponse with _$RepositoryOwnerResponse {
  const factory RepositoryOwnerResponse({
    required String login,
    required int id,
    required String avatarUrl,
    required String nodeId,
    required String url,
    required String receivedEventsUrl,
    required String type,
    required String htmlUrl,
    required String followersUrl,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required String subscriptionsUrl,
    required String organizationsUrl,
    required String reposUrl,
    required String eventsUrl,
    required bool siteAdmin,
  }) = _RepositoryOwnerResponse;

  factory RepositoryOwnerResponse.fromJson(Map<String, Object?> json) =>
      _$RepositoryOwnerResponseFromJson(json);
}
