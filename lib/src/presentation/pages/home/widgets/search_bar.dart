part of '../home_page.dart';

class _SearchBar extends ConsumerWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusNode = useFocusNode();
    return Hero(
      tag: 'search',
      child: CupertinoSearchTextField(
        focusNode: focusNode,
        placeholder: 'Search',
      ),
    );
  }
}
