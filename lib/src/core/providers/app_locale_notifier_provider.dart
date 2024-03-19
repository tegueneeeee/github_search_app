import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_locale_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class AppLocaleNotifier extends _$AppLocaleNotifier {
  @override
  AppLocale build() {
    return LocaleSettings.currentLocale;
  }

  void changeLocale(AppLocale newLocale) {
    state = newLocale;
    LocaleSettings.setLocale(newLocale);
  }
}
