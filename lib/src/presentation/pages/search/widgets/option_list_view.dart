part of '../search_page.dart';

class _OptionListView extends ConsumerWidget with SearchState {
  @override
  Widget build(BuildContext context, WidgetRef ref) => CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: GithubElementCategory.values.length,
              (context, index) => InkWell(
                onTap: () {
                  // TODO(KIM): Implement push search result
                  context.pushNamed(
                    '/search/result',
                    pathParameters: {
                      'category': GithubElementCategory.values[index].name,
                    },
                    queryParameters: {
                      'q': searchText(ref),
                    },
                  );
                },
                child: SizedBox(
                  height: 56,
                  child: ListTile(
                    leading: const Icon(Icons.search),
                    title: Text(
                      '${searchText(ref)} '
                      '${GithubElementCategory.values[index].name}',
                    ),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
