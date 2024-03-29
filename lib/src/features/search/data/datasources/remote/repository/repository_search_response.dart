import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/repository/repository_item_response.dart';

part 'repository_search_response.freezed.dart';
part 'repository_search_response.g.dart';

@freezed
class RepositorySearchResponse with _$RepositorySearchResponse {
  const factory RepositorySearchResponse({
    required int totalCount,
    required bool incompleteResults,
    required List<RepositoryItemResponse> items,
  }) = _RepositorySearchResponse;

  factory RepositorySearchResponse.fromJson(Map<String, Object?> json) =>
      _$RepositorySearchResponseFromJson(json);
}
