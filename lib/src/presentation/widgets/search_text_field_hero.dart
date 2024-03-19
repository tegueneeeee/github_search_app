import 'package:flutter/cupertino.dart';

class SearchTextFieldHero extends StatelessWidget {
  const SearchTextFieldHero({
    super.key,
    this.controller,
    this.focusNode,
    this.placeholder = 'Search GitHub',
    this.onChanged,
    this.onSubmitted,
    this.autofocus = false,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? placeholder;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'search-text-field',
      child: CupertinoSearchTextField(
        controller: controller,
        focusNode: focusNode,
        placeholder: placeholder,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        autofocus: autofocus,
      ),
    );
  }
}
