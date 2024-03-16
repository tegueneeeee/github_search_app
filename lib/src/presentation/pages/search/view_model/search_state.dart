part of 'search_view_model.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required String searchText,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchText: '',
      );
}
