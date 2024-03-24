import 'package:github_search_app/src/core/utils/delay.dart';
import 'package:github_search_app/src/core/utils/in_memory_store.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/test_user_search_json.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user_api.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user_search_response.dart';

class FakeUserApi implements UserApi {
  FakeUserApi({
    this.addDelay = true,
  });

  final _userSearchResponse = InMemoryStore<UserSearchResponse>(
    UserSearchResponse.fromJson(kTextUserSearchJson),
  );

  final bool addDelay;
  @override
  Future<UserSearchResponse> getSearchUsers(
    String query,
    int perPage,
    int page,
  ) async {
    await delay(addDelay: addDelay);
    return _userSearchResponse.value;
  }
}
