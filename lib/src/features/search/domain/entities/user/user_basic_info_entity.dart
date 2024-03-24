import 'package:github_search_app/src/features/search/data/datasources/remote/user_item_response.dart';
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

  factory UserBasicInfoEntity.empty() {
    return UserBasicInfoEntity(
      userName: '',
      avatarUrl: '',
      nodeId: '',
    );
  }

  factory UserBasicInfoEntity.fromResponse(UserItemResponse response) {
    return UserBasicInfoEntity(
      userName: response.login,
      avatarUrl: response.avatarUrl,
      nodeId: response.nodeId,
    );
  }

  final String userName;
  final String avatarUrl;
}
