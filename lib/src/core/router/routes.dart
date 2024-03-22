import 'package:flutter/material.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/presentation/pages/home/home_page.dart';
import 'package:github_search_app/src/presentation/pages/search/search_page.dart';
import 'package:github_search_app/src/presentation/pages/searched/searched_page.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRouteData>(
  path: HomeRouteData.path,
  name: HomeRouteData.name,
  routes: [
    TypedGoRoute<SearchRouteData>(
      path: SearchRouteData.path,
      name: SearchRouteData.name,
      routes: [
        TypedGoRoute<SearchedRouteData>(
          path: SearchedRouteData.path,
          name: SearchedRouteData.name,
        ),
      ],
    ),
  ],
)
class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  static const String path = '/';
  static const String name = 'home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class SearchRouteData extends GoRouteData {
  const SearchRouteData();

  static const String path = 'search';
  static const String name = 'search';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      CustomTransitionPage(
        child: const SearchPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}

class SearchedRouteData extends GoRouteData {
  const SearchedRouteData();

  static const String path = 'searched';
  static const String name = 'searched';

  @override
  Widget build(BuildContext context, GoRouterState state) => SearchedPage(
        query: state.uri.queryParameters['q'] ?? '',
        category: state.uri.queryParameters['category'] == null
            ? GithubElementCategory.total
            : GithubElementCategory.values.firstWhere(
                (element) =>
                    element.name == state.uri.queryParameters['category'],
                orElse: () => GithubElementCategory.total,
              ),
      );
}
