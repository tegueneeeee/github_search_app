import 'package:flutter/cupertino.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';

class SearchTextFieldHero extends StatelessWidget {
  const SearchTextFieldHero({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
    this.autofocus = false,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool autofocus;

  @override
  Widget build(BuildContext context) => Hero(
        tag: 'search-text-field',
        child: CupertinoSearchTextField(
          controller: controller,
          focusNode: focusNode,
          placeholder:
              Translations.of(context).widgets.searchTextFieldHero.label,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          autofocus: autofocus,
        ),
      );
}
