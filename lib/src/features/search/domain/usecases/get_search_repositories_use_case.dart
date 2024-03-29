import 'package:github_search_app/src/features/search/data/repositories/repository_repository_impl.dart';
import 'package:github_search_app/src/features/search/domain/entities/repository/repository_basic_info_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_search_repositories_use_case.g.dart';

@riverpod
class GetSearchRepositoriesUseCase extends _$GetSearchRepositoriesUseCase {
  @override
  Future<List<RepositoryBasicInfoEntity>> build({
    required String query,
    required int perPage,
    required int page,
  }) {
    return ref.read(repositoryRepositoryProvider).getSearchRepositories(
          query: query,
          perPage: perPage,
          page: page,
        );
  }
}
