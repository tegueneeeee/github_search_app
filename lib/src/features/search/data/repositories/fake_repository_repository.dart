import 'package:github_search_app/src/core/utils/in_memory_store.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/repository/repository_search_response.dart';
import 'package:github_search_app/src/features/search/data/repositories/test_repository_repository_json.dart';
import 'package:github_search_app/src/features/search/domain/entities/repository/repository_basic_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/repositories/repository_repository.dart';

class FakeRepositoryRepository implements RepositoryRepository {
  FakeRepositoryRepository({
    this.addDelay = true,
  });

  final _repositorySearchResponse = InMemoryStore<RepositorySearchResponse>(
    RepositorySearchResponse.fromJson(kTextRepositorySearchJson),
  );

  final bool addDelay;
  @override
  Future<List<RepositoryBasicInfoEntity>> getSearchRepositories({
    required String query,
    required int perPage,
    required int page,
  }) async {
    return _repositorySearchResponse.value.items
        .map(RepositoryBasicInfoEntity.fromResponse)
        .toList();
  }
}
