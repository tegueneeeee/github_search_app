part of '../searched_page.dart';

class _PagedRepositoryListView extends HookConsumerWidget
    with SearchedState, SearchedEvent {
  const _PagedRepositoryListView({
    required this.query,
  });

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pagingController = useMemoized(
      () => PagingController<int, RepositoryBasicInfoEntity>(
        firstPageKey: SearchedPage.firstPage,
      ),
    );
    useEffect(
      () {
        pagingController.addPageRequestListener(
          (pageKey) {
            final repositories = searchRepositories(
              ref,
              query: query,
              perPage: SearchedPage.perPage,
              page: pageKey,
            );
            fetchPage(
              pagingController: pagingController,
              asyncItems: repositories,
              perPage: SearchedPage.perPage,
              pageKey: pageKey,
            );
          },
        );
        return;
      },
      const [],
    );
    return ResponsivePagedListView<RepositoryBasicInfoEntity>(
      pagingController: pagingController,
      itemBuilder: (context, repository, index) => const ListTile(),
    );
  }
}
