part of 'searched_page.dart';

mixin SearchedState {
  Future<List<UserBasicInfoEntity>> searchedUsers(
    WidgetRef ref, {
    required String query,
    required int perPage,
    required int page,
  }) {
    return ref.watch(
      getSearchUsersUseCaseProvider(
        query: query,
        perPage: perPage,
        page: page,
      ).future,
    );
  }

  Future<List<RepositoryBasicInfoEntity>> searchRepositories(
    WidgetRef ref, {
    required String query,
    required int perPage,
    required int page,
  }) {
    return ref.watch(
      getSearchRepositoriesUseCaseProvider(
        query: query,
        perPage: perPage,
        page: page,
      ).future,
    );
  }
}
