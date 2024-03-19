import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_impl.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepositoryImpl();
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<UserBasicInfoEntity>> getSearchUserList({
    required String query,
    required int perPage,
    required int page,
  }) {
    // TODO: implement getSearchUserList
    throw UnimplementedError();
  }

  @override
  Future<UserDetailInfoEntity> getUserDetailInfo({
    required String userName,
  }) {
    // TODO: implement getUserDetailInfo
    throw UnimplementedError();
  }
}
