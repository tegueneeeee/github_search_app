part of 'searched_page.dart';

mixin SearchedEvent {
  Future<void> fetchPage({
    required PagingController<int, GithubElementEntity> pagingController,
    required Future<List<GithubElementEntity>> asyncItems,
    required int perPage,
    required int pageKey,
  }) async {
    try {
      final newItems = await asyncItems;
      final newItemLength = newItems.length;
      final isLastPage = newItemLength < perPage;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItemLength;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } on Exception catch (error) {
      pagingController.error = error;
    }
  }
}
