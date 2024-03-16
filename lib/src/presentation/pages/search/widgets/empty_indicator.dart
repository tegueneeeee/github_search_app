part of '../search_page.dart';

class _EmptyIndicator extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    return AnimatedOpacity(
      opacity: ref.watch(
        searchViewModelProvider.select(
          (value) => value.requireValue.searchText.isEmpty ? 1 : 0,
        ),
      ),
      duration: const Duration(milliseconds: 300),
      child: IgnorePointer(
        ignoring: ref.watch(
          searchViewModelProvider.select(
            (value) => value.requireValue.searchText.isNotEmpty,
          ),
        ),
        child: Scrollbar(
          controller: scrollController,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height -
                      kToolbarHeight -
                      kBottomNavigationBarHeight,
                  width: MediaQuery.of(context).size.width,
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.background,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Search GitHub',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const Gap(16),
                            Text(
                              'You can search\n'
                              'User, Repository, Organization, Issue\n'
                              'Pull Request.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.grey,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
