import 'package:github_search_app/src/features/search/domain/entities/repository/repository_basic_info_entity.dart';

// ignore: one_member_abstracts
abstract interface class RepositoryRepository {
  Future<List<RepositoryBasicInfoEntity>> getSearchRepositories({
    required String query,
    required int perPage,
    required int page,
  });
}
