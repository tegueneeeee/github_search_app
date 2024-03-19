import 'package:flutter/material.dart';
import 'package:github_search_app/src/app.dart';
import 'package:github_search_app/src/app_startup.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:github_search_app/src/core/logger/provider_logger.dart';
import 'package:github_search_app/src/core/providers/shared_preferences_provider.dart';
import 'package:github_search_app/src/features/search/data/repositories/fake_user_repository.dart';
import 'package:github_search_app/src/features/search/data/repositories/user_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  final storedLocale =
      sharedPreferences.getString(SharedPreferencesKey.locale.name) ??
          LocaleSettings.useDeviceLocale().languageCode;
  LocaleSettings.setLocaleRaw(storedLocale);
  runApp(
    ProviderScope(
      observers: [
        ProviderLogger(),
      ],
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        userRepositoryProvider.overrideWithValue(FakeUserRepository()),
      ],
      child: TranslationProvider(
        child: AppStartupWidget(
          onLoaded: (context) => const App(),
        ),
      ),
    ),
  );
}
