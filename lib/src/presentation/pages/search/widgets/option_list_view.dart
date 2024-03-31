part of '../search_page.dart';

class _OptionListView extends ConsumerWidget with SearchState, SearchEvent {
  @override
  Widget build(BuildContext context, WidgetRef ref) => CustomScrollView(
        slivers: [
          SliverList(
            key: SearchPage.optionListViewKey,
            delegate: SliverChildBuilderDelegate(
              childCount: GithubElementCategory.values.length,
              (context, index) => InkWell(
                onTap: () {
                  context.pushNamed(
                    SearchedRouteData.name,
                    queryParameters: {
                      'q': searchText(ref),
                      'category': categoryElementAt(index).name,
                    },
                  );
                },
                child: SizedBox(
                  height: 56,
                  child: ListTile(
                    leading: categoryIcon(
                      categoryElementAt(index),
                    ).svg(
                      colorFilter: const ColorFilter.mode(
                        AppColors.troutGrey,
                        BlendMode.srcIn,
                      ),
                    ),
                    title: Text(
                      categoryDescription(
                        ref,
                        searchText: searchText(ref),
                        category: categoryElementAt(index),
                      ),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.troutGrey,
                          ),
                    ),
                    trailing: Assets.icons.arrowRight.svg(
                      colorFilter: const ColorFilter.mode(
                        AppColors.troutGrey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
