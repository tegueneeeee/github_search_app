part of '../home_page.dart';

class _SearchBar extends ConsumerWidget with HomeState, HomeEvent {
  const _SearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Hero(
      tag: 'search',
      child: CupertinoSearchTextField(
        focusNode: focusNode(ref),
        placeholder: 'Search',
      ),
    );
  }
}
