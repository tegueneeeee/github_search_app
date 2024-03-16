import 'package:flutter/material.dart';
import 'package:github_search_app/src/presentation/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRouteData>(
  path: HomeRouteData.path,
  name: HomeRouteData.name,
)
class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  static const String path = '/';
  static const String name = 'home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
