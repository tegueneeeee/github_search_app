import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';

final kTestUserDetailInfo = UserDetailInfoEntity(
  bio: 'There once was...',
  url: 'https://api.github.com/users/octocat',
  repoCount: 2,
  followerCount: 20,
  followingCount: 0,
  createdAt: DateTime(2008, 1, 14, 4, 33, 35),
  name: 'monalisa octocat',
  location: 'San Francisco',
  userName: 'octocat',
  avatarUrl: 'https://avatars.githubusercontent.com/u/583231?v=4',
  nodeId: 'MDQ6VXNlcjU4MzIzMQ==',
);
