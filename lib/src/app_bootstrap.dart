import 'package:flutter/material.dart';
import 'package:github_search_app/src/app.dart';
import 'package:github_search_app/src/app_startup.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:github_search_app/src/core/providers/shared_preferences_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBootstrap {
  Future<Widget> createRootWidget({
    required ProviderContainer container,
  }) async {
    final prefs = await container.read(sharedPreferencesProvider.future);
    final localeCode = prefs.getString(SharedPreferencesKey.locale.name) ??
        LocaleSettings.useDeviceLocale().languageCode;
    LocaleSettings.setLocaleRaw(localeCode);
    return UncontrolledProviderScope(
      container: container,
      child: TranslationProvider(
        child: AppStartupWidget(
          onLoaded: (context) => const App(),
        ),
      ),
    );
  }
}
