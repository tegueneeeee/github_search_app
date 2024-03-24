part of 'searched_page.dart';

mixin SearchedState {
  Future<List<UserBasicInfoEntity>> searchedUsers(
    WidgetRef ref, {
    required String query,
    required int perPage,
    required int page,
  }) =>
      ref
          .read(userRepositoryProvider)
          .getSearchUserList(query: query, perPage: perPage, page: page);
}
