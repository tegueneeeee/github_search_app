/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 3
/// Strings: 33 (11 per locale)
///
/// Built on 2024-03-19 at 12:14 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';

export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
  en(languageCode: 'en', build: Translations.build),
  ja(languageCode: 'ja', build: _StringsJa.build),
  ko(languageCode: 'ko', build: _StringsKo.build);

  const AppLocale(
      {required this.languageCode,
      this.scriptCode,
      this.countryCode,
      required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, Translations> build;

  /// Gets current instance managed by [LocaleSettings].
  Translations get translations =>
      LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider
    extends BaseTranslationProvider<AppLocale, Translations> {
  TranslationProvider({required super.child})
      : super(settings: LocaleSettings.instance);

  static InheritedLocaleData<AppLocale, Translations> of(
          BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
  Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings
    extends BaseFlutterLocaleSettings<AppLocale, Translations> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale setLocaleRaw(String rawLocale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale,
          listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  @Deprecated('Use [AppLocaleUtils.supportedLocales]')
  static List<Locale> get supportedLocales => instance.supportedLocales;
  @Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]')
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver(
          {String? language,
          AppLocale? locale,
          PluralResolver? cardinalResolver,
          PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts(
          {required String languageCode,
          String? scriptCode,
          String? countryCode}) =>
      instance.parseLocaleParts(
          languageCode: languageCode,
          scriptCode: scriptCode,
          countryCode: countryCode);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get title => 'Search Github App';
  late final _StringsHomePageEn homePage = _StringsHomePageEn._(_root);
  late final _StringsSearchPageEn searchPage = _StringsSearchPageEn._(_root);
  late final _StringsWidgetsEn widgets = _StringsWidgetsEn._(_root);
}

// Path: homePage
class _StringsHomePageEn {
  _StringsHomePageEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get favorite => 'Favorite';
}

// Path: searchPage
class _StringsSearchPageEn {
  _StringsSearchPageEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsSearchPageAppBarEn appBar =
      _StringsSearchPageAppBarEn._(_root);
  late final _StringsSearchPageOptionListViewEn optionListView =
      _StringsSearchPageOptionListViewEn._(_root);
  late final _StringsSearchPageEmptyIndicatorEn emptyIndicator =
      _StringsSearchPageEmptyIndicatorEn._(_root);
}

// Path: widgets
class _StringsWidgetsEn {
  _StringsWidgetsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsWidgetsSearchTextFieldHeroEn searchTextFieldHero =
      _StringsWidgetsSearchTextFieldHeroEn._(_root);
}

// Path: searchPage.appBar
class _StringsSearchPageAppBarEn {
  _StringsSearchPageAppBarEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get cancel => 'Cancel';
}

// Path: searchPage.optionListView
class _StringsSearchPageOptionListViewEn {
  _StringsSearchPageOptionListViewEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get user => 'People with';
  String get repository => 'Repositories with';
  String get issue => 'Issues with';
  String get pullRequest => 'Pull Requests with';
  String get total => 'Jump to';
}

// Path: searchPage.emptyIndicator
class _StringsSearchPageEmptyIndicatorEn {
  _StringsSearchPageEmptyIndicatorEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Find your stuff';
  String get subTitle =>
      'Search all of Github for People, Repositories, Organizations, Issues, and Pull Requests';
}

// Path: widgets.searchTextFieldHero
class _StringsWidgetsSearchTextFieldHeroEn {
  _StringsWidgetsSearchTextFieldHeroEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Search Github';
}

// Path: <root>
class _StringsJa implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsJa.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.ja,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ja>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  @override
  late final _StringsJa _root = this; // ignore: unused_field

  // Translations
  @override
  String get title => 'Search Github App';
  @override
  late final _StringsHomePageJa homePage = _StringsHomePageJa._(_root);
  @override
  late final _StringsSearchPageJa searchPage = _StringsSearchPageJa._(_root);
  @override
  late final _StringsWidgetsJa widgets = _StringsWidgetsJa._(_root);
}

// Path: homePage
class _StringsHomePageJa implements _StringsHomePageEn {
  _StringsHomePageJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  String get favorite => 'お気に入り';
}

// Path: searchPage
class _StringsSearchPageJa implements _StringsSearchPageEn {
  _StringsSearchPageJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsSearchPageAppBarJa appBar =
      _StringsSearchPageAppBarJa._(_root);
  @override
  late final _StringsSearchPageOptionListViewJa optionListView =
      _StringsSearchPageOptionListViewJa._(_root);
  @override
  late final _StringsSearchPageEmptyIndicatorJa emptyIndicator =
      _StringsSearchPageEmptyIndicatorJa._(_root);
}

// Path: widgets
class _StringsWidgetsJa implements _StringsWidgetsEn {
  _StringsWidgetsJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsWidgetsSearchTextFieldHeroJa searchTextFieldHero =
      _StringsWidgetsSearchTextFieldHeroJa._(_root);
}

// Path: searchPage.appBar
class _StringsSearchPageAppBarJa implements _StringsSearchPageAppBarEn {
  _StringsSearchPageAppBarJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  String get cancel => 'キャンセル';
}

// Path: searchPage.optionListView
class _StringsSearchPageOptionListViewJa
    implements _StringsSearchPageOptionListViewEn {
  _StringsSearchPageOptionListViewJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  String get user => 'を含む人';
  @override
  String get repository => 'を含むリポジトリ';
  @override
  String get issue => 'を含むIssue';
  @override
  String get pullRequest => 'を含むPull Request';
  @override
  String get total => 'へ移動';
}

// Path: searchPage.emptyIndicator
class _StringsSearchPageEmptyIndicatorJa
    implements _StringsSearchPageEmptyIndicatorEn {
  _StringsSearchPageEmptyIndicatorJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  String get title => '検索してみましょう';
  @override
  String get subTitle => 'GitHub内の人、リポジトリ、Organization、Issue、フルリクエストなどを検索できます。';
}

// Path: widgets.searchTextFieldHero
class _StringsWidgetsSearchTextFieldHeroJa
    implements _StringsWidgetsSearchTextFieldHeroEn {
  _StringsWidgetsSearchTextFieldHeroJa._(this._root);

  @override
  final _StringsJa _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Githubを検索';
}

// Path: <root>
class _StringsKo implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsKo.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.ko,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ko>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  @override
  late final _StringsKo _root = this; // ignore: unused_field

  // Translations
  @override
  String get title => 'Search Github App';
  @override
  late final _StringsHomePageKo homePage = _StringsHomePageKo._(_root);
  @override
  late final _StringsSearchPageKo searchPage = _StringsSearchPageKo._(_root);
  @override
  late final _StringsWidgetsKo widgets = _StringsWidgetsKo._(_root);
}

// Path: homePage
class _StringsHomePageKo implements _StringsHomePageEn {
  _StringsHomePageKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  String get favorite => '즐겨찾기';
}

// Path: searchPage
class _StringsSearchPageKo implements _StringsSearchPageEn {
  _StringsSearchPageKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsSearchPageAppBarKo appBar =
      _StringsSearchPageAppBarKo._(_root);
  @override
  late final _StringsSearchPageOptionListViewKo optionListView =
      _StringsSearchPageOptionListViewKo._(_root);
  @override
  late final _StringsSearchPageEmptyIndicatorKo emptyIndicator =
      _StringsSearchPageEmptyIndicatorKo._(_root);
}

// Path: widgets
class _StringsWidgetsKo implements _StringsWidgetsEn {
  _StringsWidgetsKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsWidgetsSearchTextFieldHeroKo searchTextFieldHero =
      _StringsWidgetsSearchTextFieldHeroKo._(_root);
}

// Path: searchPage.appBar
class _StringsSearchPageAppBarKo implements _StringsSearchPageAppBarEn {
  _StringsSearchPageAppBarKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  String get cancel => '취소';
}

// Path: searchPage.optionListView
class _StringsSearchPageOptionListViewKo
    implements _StringsSearchPageOptionListViewEn {
  _StringsSearchPageOptionListViewKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  String get user => '이(가) 이름에 포함된 사람';
  @override
  String get repository => '이(가) 있는 리포지토리';
  @override
  String get issue => '과(와) 관련된 Issue';
  @override
  String get pullRequest => '이(가) 포함된 Pull Request';
  @override
  String get total => '(으)로 이동';
}

// Path: searchPage.emptyIndicator
class _StringsSearchPageEmptyIndicatorKo
    implements _StringsSearchPageEmptyIndicatorEn {
  _StringsSearchPageEmptyIndicatorKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '무엇이든 찾아보세요';
  @override
  String get subTitle =>
      '모든 GitHub에서 사용자, 리포지토리, 조직, Issue 및 Pull Request를 검색합니다.';
}

// Path: widgets.searchTextFieldHero
class _StringsWidgetsSearchTextFieldHeroKo
    implements _StringsWidgetsSearchTextFieldHeroEn {
  _StringsWidgetsSearchTextFieldHeroKo._(this._root);

  @override
  final _StringsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Github 검색';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'title':
        return 'Search Github App';
      case 'homePage.favorite':
        return 'Favorite';
      case 'searchPage.appBar.cancel':
        return 'Cancel';
      case 'searchPage.optionListView.user':
        return 'People with';
      case 'searchPage.optionListView.repository':
        return 'Repositories with';
      case 'searchPage.optionListView.issue':
        return 'Issues with';
      case 'searchPage.optionListView.pullRequest':
        return 'Pull Requests with';
      case 'searchPage.optionListView.total':
        return 'Jump to';
      case 'searchPage.emptyIndicator.title':
        return 'Find your stuff';
      case 'searchPage.emptyIndicator.subTitle':
        return 'Search all of Github for People, Repositories, Organizations, Issues, and Pull Requests';
      case 'widgets.searchTextFieldHero.label':
        return 'Search Github';
      default:
        return null;
    }
  }
}

extension on _StringsJa {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'title':
        return 'Search Github App';
      case 'homePage.favorite':
        return 'お気に入り';
      case 'searchPage.appBar.cancel':
        return 'キャンセル';
      case 'searchPage.optionListView.user':
        return 'を含む人';
      case 'searchPage.optionListView.repository':
        return 'を含むリポジトリ';
      case 'searchPage.optionListView.issue':
        return 'を含むIssue';
      case 'searchPage.optionListView.pullRequest':
        return 'を含むPull Request';
      case 'searchPage.optionListView.total':
        return 'へ移動';
      case 'searchPage.emptyIndicator.title':
        return '検索してみましょう';
      case 'searchPage.emptyIndicator.subTitle':
        return 'GitHub内の人、リポジトリ、Organization、Issue、フルリクエストなどを検索できます。';
      case 'widgets.searchTextFieldHero.label':
        return 'Githubを検索';
      default:
        return null;
    }
  }
}

extension on _StringsKo {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'title':
        return 'Search Github App';
      case 'homePage.favorite':
        return '즐겨찾기';
      case 'searchPage.appBar.cancel':
        return '취소';
      case 'searchPage.optionListView.user':
        return '이(가) 이름에 포함된 사람';
      case 'searchPage.optionListView.repository':
        return '이(가) 있는 리포지토리';
      case 'searchPage.optionListView.issue':
        return '과(와) 관련된 Issue';
      case 'searchPage.optionListView.pullRequest':
        return '이(가) 포함된 Pull Request';
      case 'searchPage.optionListView.total':
        return '(으)로 이동';
      case 'searchPage.emptyIndicator.title':
        return '무엇이든 찾아보세요';
      case 'searchPage.emptyIndicator.subTitle':
        return '모든 GitHub에서 사용자, 리포지토리, 조직, Issue 및 Pull Request를 검색합니다.';
      case 'widgets.searchTextFieldHero.label':
        return 'Github 검색';
      default:
        return null;
    }
  }
}
