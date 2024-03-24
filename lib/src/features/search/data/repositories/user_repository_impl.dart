import 'package:github_search_app/src/features/search/data/datasources/remote/user_api.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_impl.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepositoryImpl(
    ref.watch(userApiProvider),
  );
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userApi);

  final UserApi _userApi;
  @override
  Future<List<UserBasicInfoEntity>> getSearchUserList({
    required String query,
    required int perPage,
    required int page,
  }) {
    return _userApi
        .getSearchUsers(
          query,
          perPage,
          page,
        )
        .then(
          (value) => value.items.map(UserBasicInfoEntity.fromResponse).toList(),
        );
  }

  @override
  Future<UserDetailInfoEntity> getUserDetailInfo({
    required String userName,
  }) {
    // TODO: implement getUserDetailInfo
    throw UnimplementedError();
  }
}
