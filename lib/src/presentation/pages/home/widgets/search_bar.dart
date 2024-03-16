part of '../home_page.dart';

class _SearchBar extends BaseWidget with HomeState, HomeEvent {
  const _SearchBar();

  @override
  Widget buildWidget(BuildContext context, WidgetRef ref) {
    return Hero(
      tag: 'search',
      child: CupertinoSearchTextField(
        focusNode: focusNode(ref),
        placeholder: 'Search',
      ),
    );
  }
}
