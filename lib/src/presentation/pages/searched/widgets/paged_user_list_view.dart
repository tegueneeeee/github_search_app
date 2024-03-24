part of '../searched_page.dart';

class _PagedUserListView extends HookConsumerWidget
    with SearchedState, SearchedEvent {
  const _PagedUserListView({
    required this.query,
  });

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pagingController = useMemoized(
      () => PagingController<int, UserBasicInfoEntity>(
        firstPageKey: SearchedPage.firstPage,
      ),
    );
    useEffect(
      () {
        pagingController.addPageRequestListener(
          (pageKey) {
            final users = searchedUsers(
              ref,
              query: query,
              perPage: SearchedPage.perPage,
              page: SearchedPage.firstPage,
            );
            fetchPage(
              pagingController: pagingController,
              asyncItems: users,
              perPage: SearchedPage.perPage,
              pageKey: pageKey,
            );
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
    return ResponsivePagedListView<UserBasicInfoEntity>(
      pagingController: pagingController,
      itemBuilder: (context, user, index) => ListTile(
        title: Text(user.userName),
      ),
    );
  }
}
