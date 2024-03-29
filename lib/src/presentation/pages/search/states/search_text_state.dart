import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_text_state.g.dart';

@riverpod
class SearchTextState extends _$SearchTextState {
  @override
  String build() => '';

  void onChanged(String text) {
    final searchText = text;
    state = searchText;
  }
}
