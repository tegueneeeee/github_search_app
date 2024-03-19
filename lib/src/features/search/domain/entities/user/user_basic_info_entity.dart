import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_entity.dart';

class UserBasicInfoEntity extends GithubElementEntity {
  UserBasicInfoEntity({
    required this.userName,
    required this.avatarUrl,
    required super.nodeId,
  }) : super(
          exploreDate: DateTime.now(),
          category: GithubElementCategory.user,
        );

  final String userName;
  final String avatarUrl;
}
