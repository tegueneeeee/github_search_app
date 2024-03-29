import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user/user_item_response.dart';

part 'user_search_response.freezed.dart';
part 'user_search_response.g.dart';

@freezed
class UserSearchResponse with _$UserSearchResponse {
  const factory UserSearchResponse({
    required int totalCount,
    required bool incompleteResults,
    required List<UserItemResponse> items,
  }) = _UserSearchResponse;

  factory UserSearchResponse.fromJson(Map<String, Object?> json) =>
      _$UserSearchResponseFromJson(json);
}
