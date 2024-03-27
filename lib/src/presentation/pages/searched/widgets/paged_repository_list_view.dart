part of '../searched_page.dart';

class _PagedRepositoryListView extends HookWidget with SearchedEvent {
  const _PagedRepositoryListView({
    required this.query,
  });

  final String query;

  @override
  Widget build(BuildContext context) {
    final pagingController = useMemoized(
      () => PagingController<int, UserBasicInfoEntity>(
        firstPageKey: SearchedPage.firstPage,
      ),
    );
    useEffect(
      () {
        pagingController.addPageRequestListener(
          (pageKey) {
            // final users = searchedUsers(
            //   ref,
            //   query: query,
            //   perPage: SearchedPage.perPage,
            //   page: pageKey,
            // );
            // fetchPage(
            //   pagingController: pagingController,
            //   // asyncItems: users,
            //   perPage: SearchedPage.perPage,
            //   pageKey: pageKey,
            // );
          },
        );
        return () {
          pagingController
            ..removePageRequestListener((pageKey) {})
            ..dispose();
        };
      },
      const [],
    );
    return const Placeholder();
  }
}
