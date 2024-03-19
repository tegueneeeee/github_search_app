import 'package:flutter/material.dart';
import 'package:github_search_app/src/app.dart';
import 'package:github_search_app/src/app_startup.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:github_search_app/src/core/logger/provider_logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO(KIM): Load from storage
  // final String storedLocale = loadFromStorage();
  // LocaleSettings.setLocaleRaw('ko');
  runApp(
    ProviderScope(
      observers: [
        ProviderLogger(),
      ],
      child: TranslationProvider(
        child: AppStartupWidget(
          onLoaded: (context) => const App(),
        ),
      ),
    ),
  );
}
