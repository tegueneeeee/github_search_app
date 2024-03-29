part of 'search_page.dart';

mixin class SearchState {
  String searchText(WidgetRef ref) => ref.watch(searchTextStateProvider);
}
