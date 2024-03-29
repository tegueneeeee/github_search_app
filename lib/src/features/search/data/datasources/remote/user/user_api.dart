import 'package:dio/dio.dart';
import 'package:github_search_app/src/core/network/github_dio.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user/user_detail_response.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user/user_search_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_api.g.dart';

@Riverpod(keepAlive: true)
UserApi userApi(UserApiRef ref) {
  return UserApi(
    GithubDio.getInstance(),
  );
}

@RestApi()
abstract interface class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET('/search/users')
  Future<UserSearchResponse> getSearchUsers(
    @Query('q') String query,
    @Query('per_page') int perPage,
    @Query('page') int page,
  );

  @GET('/users/{username}')
  Future<UserDetailResponse> getUserDetail(
    @Path('username') String username,
  );
}
