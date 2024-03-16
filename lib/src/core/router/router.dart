import 'package:flutter/foundation.dart';
import 'package:github_search_app/src/core/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: $appRoutes,
    initialLocation: HomeRouteData.path,
    debugLogDiagnostics: kDebugMode,
  );
}
