part of '../home_page.dart';

class _SearchBar extends HookWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    useEffect(
      () {
        focusNode.addListener(
          () {
            if (focusNode.hasFocus) {
              focusNode.unfocus();
              context.pushNamed(SearchRouteData.name);
            }
          },
        );
        return;
      },
      const [],
    );
    return SearchTextFieldHero(
      focusNode: focusNode,
    );
  }
}
