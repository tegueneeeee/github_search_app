import 'package:github_search_app/src/features/search/data/datasources/remote/repository/repository_item_response.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_entity.dart';

class RepositoryBasicInfoEntity extends GithubElementEntity {
  RepositoryBasicInfoEntity({
    required super.nodeId,
    required this.userLoginName,
    required this.userProfileImageUrl,
    required this.title,
    required this.starCount,
    required this.forkCount,
    this.description,
    this.language,
  }) : super(
          exploreDate: DateTime.now(),
          category: GithubElementCategory.repository,
        );

  factory RepositoryBasicInfoEntity.empty() => RepositoryBasicInfoEntity(
        nodeId: '',
        userLoginName: '',
        userProfileImageUrl: '',
        title: '',
        starCount: 0,
        forkCount: 0,
      );

  factory RepositoryBasicInfoEntity.fromResponse(
    RepositoryItemResponse response,
  ) =>
      RepositoryBasicInfoEntity(
        nodeId: response.nodeId,
        userLoginName: response.owner.login,
        userProfileImageUrl: response.owner.avatarUrl,
        title: response.name,
        starCount: response.stargazersCount,
        forkCount: response.forksCount,
        description: response.description,
        language: response.language,
      );

  final String userLoginName;
  final String userProfileImageUrl;
  final String title;
  final int starCount;
  final int forkCount;
  final String? description;
  final String? language;
}
