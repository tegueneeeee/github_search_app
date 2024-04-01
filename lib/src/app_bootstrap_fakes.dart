import 'package:github_search_app/src/app_bootstrap.dart';
import 'package:github_search_app/src/core/logger/provider_logger.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user/fake_user_api.dart';
import 'package:github_search_app/src/features/search/data/datasources/remote/user/user_api.dart';
import 'package:github_search_app/src/features/search/data/repositories/fake_repository_repository.dart';
import 'package:github_search_app/src/features/search/data/repositories/repository_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AppBootstrapFakes on AppBootstrap {
  Future<ProviderContainer> createFakesProviderContainer({
    bool addDelay = true,
  }) async {
    final userApi = FakeUserApi(addDelay: addDelay);
    final repositoryRepository = FakeRepositoryRepository(addDelay: addDelay);
    return ProviderContainer(
      overrides: [
        userApiProvider.overrideWithValue(userApi),
        repositoryRepositoryProvider.overrideWithValue(repositoryRepository),
      ],
      observers: [ProviderLogger()],
    );
  }
}
