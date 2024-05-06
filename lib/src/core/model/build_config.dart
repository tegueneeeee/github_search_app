import 'package:github_search_app/src/core/model/flavor.dart';

abstract interface class BuildConfig {
  abstract final String appName;
  abstract final String packageName;
  abstract final String version;
  abstract final String buildNumber;
  abstract final String buildSignature;
  abstract final Flavor flavor;
  abstract final String? installerStore;
}

final class FakeBuildConfig implements BuildConfig {
  @override
  final String appName = 'Fake GitHub Search App';
  @override
  final String packageName = 'com.github_search_app.fake';
  @override
  final String version = '1.0.0';
  @override
  final String buildNumber = '1';
  @override
  final String buildSignature = '1';
  @override
  final Flavor flavor = Flavor.dev;
  @override
  final String? installerStore = null;
}
