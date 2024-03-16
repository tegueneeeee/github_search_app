import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_view_model.freezed.dart';
part 'search_view_model.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  @override
  FutureOr<SearchState> build() {
    return SearchState.initial();
  }

  void onEvent(SearchEvent event) {
    switch (event) {
      case SearchEventOnChanged():
        _onChanged(event);
      case SearchEventOnSubmitted():
        _onSubmitted();
    }
  }

  void _onChanged(SearchEventOnChanged event) {
    state = AsyncData(
      state.requireValue.copyWith(
        searchText: event.text,
      ),
    );
  }

  void _onSubmitted() {
    state = AsyncData(
      state.requireValue.copyWith(
        searchText: '',
      ),
    );
  }
}
