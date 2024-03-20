import 'package:github_search_app/src/app_bootstrap.dart';
import 'package:github_search_app/src/core/logger/provider_logger.dart';
import 'package:github_search_app/src/features/search/data/repositories/fake_user_repository.dart';
import 'package:github_search_app/src/features/search/data/repositories/user_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AppBootstrapFakes on AppBootstrap {
  Future<ProviderContainer> createFakesProviderContainer({
    bool addDelay = true,
  }) async {
    final userRepository = FakeUserRepository(addDelay: addDelay);
    return ProviderContainer(
      overrides: [
        userRepositoryProvider.overrideWithValue(userRepository),
      ],
      observers: [ProviderLogger()],
    );
  }
}
