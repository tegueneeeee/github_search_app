part of 'search_view_model.dart';

sealed class SearchEvent {
  const SearchEvent();
}

final class SearchEventOnChanged extends SearchEvent {
  const SearchEventOnChanged({
    required this.text,
  });
  final String text;
}

final class SearchEventOnSubmitted extends SearchEvent {
  const SearchEventOnSubmitted({
    required this.query,
  });
  final String query;
}
