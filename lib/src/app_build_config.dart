import 'package:github_search_app/src/core/model/build_config.dart';
import 'package:github_search_app/src/core/model/flavor.dart';
import 'package:package_info_plus/package_info_plus.dart';

typedef InitializedValues = ({
  BuildConfig buildConfig,
});

final class AppBuildConfig implements BuildConfig {
  AppBuildConfig({
    required String appFlavor,
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
    required this.buildSignature,
    this.installerStore,
  }) : flavor = switch (appFlavor) {
          'fake' => Flavor.fake,
          'dev' => Flavor.dev,
          'prod' => Flavor.prod,
          _ => Flavor.dev,
        };

  static Future<InitializedValues> initialize() async {
    final buildConfig = await _initializeBuildConfig();
    return (buildConfig: buildConfig);
  }

  static Future<BuildConfig> _initializeBuildConfig() async {
    final packageInfo = await PackageInfo.fromPlatform();
    const appFlavor = String.fromEnvironment('flavor');
    return AppBuildConfig(
      appFlavor: appFlavor,
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      buildSignature: packageInfo.buildSignature,
      installerStore: packageInfo.installerStore,
    );
  }

  @override
  final String appName;

  @override
  final String packageName;

  @override
  final String version;

  @override
  final String buildNumber;

  @override
  final String buildSignature;

  @override
  final Flavor flavor;

  @override
  final String? installerStore;

  @override
  String toString() {
    return 'AppBuildConfig{'
        'appName: $appName, '
        'packageName: $packageName, '
        'version: $version, '
        'buildNumber: $buildNumber, '
        'buildSignature: $buildSignature, '
        'flavor: $flavor, '
        'installerStore: $installerStore}';
  }
}
