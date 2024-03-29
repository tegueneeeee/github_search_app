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
}
