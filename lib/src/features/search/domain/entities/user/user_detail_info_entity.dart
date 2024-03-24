import 'package:github_search_app/src/features/search/data/datasources/remote/user_detail_response.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';

class UserDetailInfoEntity extends UserBasicInfoEntity {
  UserDetailInfoEntity({
    this.bio,
    required this.url,
    required this.repoCount,
    required this.followerCount,
    required this.followingCount,
    required this.createdAt,
    this.name,
    this.location,
    required super.userName,
    required super.avatarUrl,
    required super.nodeId,
  });

  factory UserDetailInfoEntity.empty() => UserDetailInfoEntity(
        url: '',
        repoCount: 0,
        followerCount: 0,
        followingCount: 0,
        createdAt: DateTime.now(),
        userName: '',
        avatarUrl: '',
        nodeId: '',
      );

  factory UserDetailInfoEntity.fromResponse(UserDetailResponse response) =>
      UserDetailInfoEntity(
        bio: response.bio,
        url: response.url,
        repoCount: response.publicRepos,
        followerCount: response.followers,
        followingCount: response.following,
        createdAt: DateTime.parse(response.createdAt),
        name: response.name,
        location: response.location,
        userName: response.login,
        avatarUrl: response.avatarUrl,
        nodeId: response.nodeId,
      );

  final String? bio;
  final String url;
  final int repoCount;
  final int followerCount;
  final int followingCount;
  final DateTime createdAt;
  final String? name;
  final String? location;
}
