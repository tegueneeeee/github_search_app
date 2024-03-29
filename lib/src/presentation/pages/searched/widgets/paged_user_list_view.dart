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
              page: pageKey,
            );
            fetchPage(
              pagingController: pagingController,
              asyncItems: users,
              perPage: SearchedPage.perPage,
              pageKey: pageKey,
            );
          },
        );
        return;
      },
      const [],
    );
    return ResponsivePagedListView<UserBasicInfoEntity>(
      pagingController: pagingController,
      itemBuilder: (context, user, index) => _UserListTile(
        user: user,
      ),
    );
  }
}
