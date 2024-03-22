part of 'search_page.dart';

mixin class SearchEvent {
  void onChanged(WidgetRef ref, String text) {
    ref.read(searchTextProvider.notifier).onChanged(text);
  }

  void onSubmitted(
    WidgetRef ref, {
    required String query,
    required TextEditingController controller,
  }) {
    if (query.isEmpty) {
      return;
    }
    controller.clear();
    ref.invalidate(searchTextProvider);
    // TODO(KIM): Implement search
  }

  GithubElementCategory categoryElementAt(int index) {
    return GithubElementCategory.values.elementAt(index);
  }

  SvgGenImage categoryIcon(GithubElementCategory category) {
    return Assets.icons.values.firstWhere(
      (icon) => icon.path == category.path,
      orElse: () => Assets.icons.errorIndicator,
    );
  }

  String categoryDescription(
    WidgetRef ref, {
    required String searchText,
    required GithubElementCategory category,
  }) {
    final appLocale = ref.watch(localeProvider);
    final translations = appLocale.translations;
    final currentLocale = appLocale.flutterLocale;
    final description = switch (category) {
      GithubElementCategory.user => translations.searchPage.optionListView.user,
      GithubElementCategory.repository =>
        translations.searchPage.optionListView.repository,
      GithubElementCategory.issue =>
        translations.searchPage.optionListView.issue,
      GithubElementCategory.pr =>
        translations.searchPage.optionListView.pullRequest,
      GithubElementCategory.total =>
        translations.searchPage.optionListView.total,
    };
    switch (currentLocale.languageCode) {
      case 'en':
        return '$description $searchText';
    }
    return '$searchText $description';
  }
}
