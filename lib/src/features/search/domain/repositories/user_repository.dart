import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';

abstract interface class UserRepository {
  Future<List<UserBasicInfoEntity>> getSearchUserList({
    required String query,
    required int perPage,
    required int page,
  });

  Future<UserDetailInfoEntity> getUserDetailInfo({
    required String userName,
  });
}
