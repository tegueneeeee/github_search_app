import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_text_provider.g.dart';

@riverpod
class SearchText extends _$SearchText {
  @override
  String build() => '';

  void onChanged(String text) {
    final searchText = text;
    state = searchText;
  }
}
