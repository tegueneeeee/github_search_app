part of '../search_page.dart';

class _EmptyIndicator extends BaseWidget {
  @override
  Widget buildWidget(BuildContext context, WidgetRef ref) => AnimatedOpacity(
        opacity: ref.watch(
          searchViewModelProvider.select(
            (value) => value.requireValue.searchText.isEmpty ? 1 : 0,
          ),
        ),
        duration: const Duration(milliseconds: 300),
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
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
}
