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
}
