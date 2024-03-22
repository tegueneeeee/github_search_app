import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_locale_provider.g.dart';

@Riverpod(keepAlive: true)
class Locale extends _$Locale {
  @override
  AppLocale build() => LocaleSettings.currentLocale;

  Future<void> changeLocale(AppLocale newLocale) async {
    state = newLocale;
    LocaleSettings.setLocale(newLocale);
  }
}
