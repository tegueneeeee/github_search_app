import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/repository/repository_owner_response.dart';

part 'repository_item_response.freezed.dart';
part 'repository_item_response.g.dart';

@freezed
class RepositoryItemResponse with _$RepositoryItemResponse {
  const factory RepositoryItemResponse({
    required int id,
    required String nodeId,
    required String name,
    required String fullName,
    required RepositoryOwnerResponse owner,
    required bool private,
    required String htmlUrl,
    String? description,
    required bool fork,
    required String url,
    required String createdAt,
    required String updatedAt,
    String? pushedAt,
    String? homepage,
    required int size,
    required int stargazersCount,
    required int watchersCount,
    String? language,
    required int forksCount,
    required int openIssuesCount,
    required String defaultBranch,
    required double score,
    required String archiveUrl,
    required String assigneesUrl,
    required String blobsUrl,
    required String branchesUrl,
    required String collaboratorsUrl,
    required String commentsUrl,
    required String commitsUrl,
    required String compareUrl,
    required String contentsUrl,
    required String contributorsUrl,
    required String deploymentsUrl,
    required String downloadsUrl,
    required String eventsUrl,
    required String forksUrl,
    required String gitCommitsUrl,
    required String gitRefsUrl,
    required String gitTagsUrl,
    required String gitUrl,
    required String issueCommentUrl,
    required String issueEventsUrl,
    required String issuesUrl,
    required String keysUrl,
    required String labelsUrl,
    required String languagesUrl,
    required String mergesUrl,
    required String milestonesUrl,
    required String notificationsUrl,
    required String pullsUrl,
    required String releasesUrl,
    required String sshUrl,
    required String stargazersUrl,
    required String statusesUrl,
    required String subscribersUrl,
    required String subscriptionUrl,
    required String tagsUrl,
    required String teamsUrl,
    required String treesUrl,
    required String cloneUrl,
    String? mirrorUrl,
    required String hooksUrl,
    required String svnUrl,
    required int forks,
    required int openIssues,
    required int watchers,
    required bool hasIssues,
    required bool hasProjects,
    required bool hasPages,
    required bool hasWiki,
    required bool hasDownloads,
    required bool archived,
    required bool disabled,
    required String visibility,
  }) = _RepositoryItemResponse;

  factory RepositoryItemResponse.fromJson(Map<String, Object?> json) =>
      _$RepositoryItemResponseFromJson(json);
}
