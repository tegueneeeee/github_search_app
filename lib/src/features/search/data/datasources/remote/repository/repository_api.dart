import 'package:dio/dio.dart';
import 'package:github_search_app/src/core/network/github_dio.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/repository/repository_search_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_api.g.dart';

@Riverpod(keepAlive: true)
RepositoryApi repositoryApi(RepositoryApiRef ref) {
  return RepositoryApi(
    ref.watch(githubDioProvider),
  );
}

@RestApi()
abstract interface class RepositoryApi {
  factory RepositoryApi(Dio dio, {String baseUrl}) = _RepositoryApi;

  @GET('/search/repositories')
  Future<RepositorySearchResponse> getSearchRepositories(
    @Query('q') String query,
    @Query('per_page') int perPage,
    @Query('page') int page,
  );
}
