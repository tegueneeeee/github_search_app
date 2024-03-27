import 'package:github_search_app/src/features/search/data/repositories/user_repository_impl.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_search_users_use_case.g.dart';

@riverpod
class GetSearchUsersUseCase extends _$GetSearchUsersUseCase {
  @override
  Future<List<UserBasicInfoEntity>> build({
    required String query,
    required int perPage,
    required int page,
  }) {
    return ref.read(userRepositoryProvider).getSearchUsers(
          query: query,
          perPage: perPage,
          page: page,
        );
  }
}
