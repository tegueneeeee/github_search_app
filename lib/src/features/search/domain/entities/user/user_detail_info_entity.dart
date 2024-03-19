import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';

class UserDetailInfoEntity extends UserBasicInfoEntity {
  UserDetailInfoEntity({
    required this.bio,
    required this.url,
    required this.repoCount,
    required this.followerCount,
    required this.followingCount,
    required this.createdAt,
    required this.name,
    required this.location,
    required super.userName,
    required super.avatarUrl,
    required super.nodeId,
  });

  factory UserDetailInfoEntity.empty() {
    return UserDetailInfoEntity(
      bio: null,
      url: '',
      repoCount: 0,
      followerCount: 0,
      followingCount: 0,
      createdAt: DateTime.now(),
      name: null,
      location: null,
      userName: '',
      avatarUrl: '',
      nodeId: '',
    );
  }

  final String? bio;
  final String url;
  final int repoCount;
  final int followerCount;
  final int followingCount;
  final DateTime createdAt;
  final String? name;
  final String? location;
}
