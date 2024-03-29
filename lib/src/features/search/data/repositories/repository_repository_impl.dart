import 'package:github_search_app/src/features/search/data/datasources/remote/repository/repository_api.dart';
import 'package:github_search_app/src/features/search/domain/entities/repository/repository_basic_info_entity.dart';
import 'package:github_search_app/src/features/search/domain/repositories/repository_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_repository_impl.g.dart';

@Riverpod(keepAlive: true)
RepositoryRepository repositoryRepository(RepositoryRepositoryRef ref) {
  return RepositoryRepositoryImpl(
    ref.watch(repositoryApiProvider),
  );
}

class RepositoryRepositoryImpl implements RepositoryRepository {
  RepositoryRepositoryImpl(this._repositoryApi);

  final RepositoryApi _repositoryApi;
  @override
  Future<List<RepositoryBasicInfoEntity>> getSearchRepositories({
    required String query,
    required int perPage,
    required int page,
  }) {
    return _repositoryApi
        .getSearchRepositories(
          query,
          perPage,
          page,
        )
        .then(
          (value) =>
              value.items.map(RepositoryBasicInfoEntity.fromResponse).toList(),
        );
  }
}
