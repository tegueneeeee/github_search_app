import 'package:github_search_app/src/core/utils/delay.dart';
import 'package:github_search_app/src/core/utils/in_memory_store.dart';
import 'package:github_search_app/src/features/search/data/repositories/test_user_detail_info.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/repositories/user_repository.dart';

class FakeUserRepository implements UserRepository {
  FakeUserRepository({
    this.addDelay = true,
  });

  final bool addDelay;
  final _userDetailInfo =
      InMemoryStore<UserDetailInfoEntity>(kTestUserDetailInfo);

  @override
  Future<List<UserBasicInfoEntity>> getSearchUserList({
    required String query,
    required int perPage,
    required int page,
  }) async {
    // TODO: implement getUserDetailInfo
    throw UnimplementedError();
  }

  @override
  Future<UserDetailInfoEntity> getUserDetailInfo({
    required String userName,
  }) async {
    await delay(addDelay: addDelay);
    return Future.value(_userDetailInfo.value);
  }
}
