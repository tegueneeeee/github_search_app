part of 'search_page.dart';

mixin class SearchEvent {
  void onChanged(WidgetRef ref, String text) {
    ref.read(searchTextProvider.notifier).onChanged(text);
  }

  void onSubmitted(WidgetRef ref, String query) {
    ref.invalidate(searchTextProvider);
    // TODO(KIM): Implement search
  }
}
