import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';

class SearchTextFieldHero extends HookWidget {
  const SearchTextFieldHero({
    super.key,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.autofocus = false,
  });

  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final VoidCallback? onTap;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Hero(
      tag: 'search-text-field',
      child: CupertinoSearchTextField(
        controller: controller,
        placeholder: Translations.of(context).widgets.searchTextFieldHero.label,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        autofocus: autofocus,
        onTap: onTap,
      ),
    );
  }
}
