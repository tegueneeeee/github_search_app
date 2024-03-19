part of '../search_page.dart';

class _OptionListView extends ConsumerWidget with SearchState {
  @override
  Widget build(BuildContext context, WidgetRef ref) => CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: GithubElementCategory.values.length,
              (context, index) {
                final category = GithubElementCategory.values.elementAt(index);
                final icon = Assets.icons.values.firstWhere(
                  (icon) => icon.path == category.path,
                  orElse: () => Assets.icons.errorIndicator,
                );
                return InkWell(
                  onTap: () {
                    // TODO(KIM): Implement push search result
                    context.pushNamed(
                      '/search/result',
                      pathParameters: {
                        'category': category.name,
                      },
                      queryParameters: {
                        'q': searchText(ref),
                      },
                    );
                  },
                  child: SizedBox(
                    height: 56,
                    child: ListTile(
                      leading: icon.svg(
                        colorFilter: const ColorFilter.mode(
                          AppColors.troutGrey,
                          BlendMode.srcIn,
                        ),
                      ),
                      title: Text(
                        '${searchText(ref)} '
                        '${category.name}',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
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
                );
              },
            ),
          ),
        ],
      );
}
