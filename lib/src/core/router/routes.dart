import 'package:flutter/material.dart';
import 'package:github_search_app/src/presentation/pages/home/home_page.dart';
import 'package:github_search_app/src/presentation/pages/search/search_page.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRouteData>(
  path: HomeRouteData.path,
  name: HomeRouteData.name,
  routes: [
    TypedGoRoute<SearchRouteData>(
      path: SearchRouteData.path,
      name: SearchRouteData.name,
    ),
  ],
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

class SearchRouteData extends GoRouteData {
  const SearchRouteData();

  static const String path = 'search';
  static const String name = 'search';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: const SearchPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
