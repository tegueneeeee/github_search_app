import 'package:flutter/material.dart';
import 'package:github_search_app/src/app_bootstrap.dart';
import 'package:github_search_app/src/app_bootstrap_fakes.dart';
import 'package:github_search_app/src/app_build_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final (buildConfig: buildConfig) = await AppBuildConfig.initialize();
  final appBootstrap = AppBootstrap();
  final container = await appBootstrap.createFakesProviderContainer();
  final root = await appBootstrap.createRootWidget(container: container);
  runApp(
    root,
  );
}
