// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRouteData,
    ];

RouteBase get $homeRouteData => GoRouteData.$route(
      path: '/',
      name: 'home',
      factory: $HomeRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'search',
          name: 'search',
          factory: $SearchRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'searched',
              name: 'searched',
              factory: $SearchedRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  name: 'detail',
                  factory: $DetailRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteDataExtension on SearchRouteData {
  static SearchRouteData _fromState(GoRouterState state) =>
      const SearchRouteData();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchedRouteDataExtension on SearchedRouteData {
  static SearchedRouteData _fromState(GoRouterState state) =>
      const SearchedRouteData();

  String get location => GoRouteData.$location(
        '/search/searched',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailRouteDataExtension on DetailRouteData {
  static DetailRouteData _fromState(GoRouterState state) =>
      const DetailRouteData();

  String get location => GoRouteData.$location(
        '/search/searched/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
