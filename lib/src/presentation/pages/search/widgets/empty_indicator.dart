part of '../search_page.dart';

class _EmptyIndicator extends HookConsumerWidget with SearchState {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    return AnimatedOpacity(
      opacity: searchText(ref).isEmpty ? 1 : 0,
      duration: const Duration(milliseconds: 300),
      child: IgnorePointer(
        ignoring: searchText(ref).isNotEmpty,
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
                              Translations.of(context)
                                  .searchPage
                                  .emptyIndicator
                                  .title,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            const Gap(16),
                            Text(
                              Translations.of(context)
                                  .searchPage
                                  .emptyIndicator
                                  .subTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.grey,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                ref.read(localeProvider.notifier).changeLocale(
                                      AppLocale.en,
                                    );
                                ref
                                    .read(sharedPreferencesProvider)
                                    .requireValue
                                    .setString(
                                      SharedPreferencesKey.locale.name,
                                      'en',
                                    );
                              },
                              child: const Text('en'),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                ref.read(localeProvider.notifier).changeLocale(
                                      AppLocale.ja,
                                    );
                                ref
                                    .read(sharedPreferencesProvider)
                                    .requireValue
                                    .setString(
                                      SharedPreferencesKey.locale.name,
                                      'ja',
                                    );
                              },
                              child: const Text('ja'),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                ref.read(localeProvider.notifier).changeLocale(
                                      AppLocale.ko,
                                    );
                                ref
                                    .read(sharedPreferencesProvider)
                                    .requireValue
                                    .setString(
                                      SharedPreferencesKey.locale.name,
                                      'ko',
                                    );
                              },
                              child: const Text('ko'),
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
