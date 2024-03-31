import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/app.dart';
import 'package:github_search_app/src/app_bootstrap.dart';
import 'package:github_search_app/src/app_bootstrap_fakes.dart';
import 'package:github_search_app/src/app_startup.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/pages/home/home_robot.dart';
import 'presentation/pages/search/search_robot.dart';

class Robot {
  Robot(this.tester)
      : home = HomeRobot(tester),
        search = SearchRobot(tester);

  final WidgetTester tester;
  final HomeRobot home;
  final SearchRobot search;

  Future<void> pumpAppWithFakes() async {
    final appBootstrap = AppBootstrap();
    final container = await appBootstrap.createFakesProviderContainer();
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: TranslationProvider(
          child: AppStartupWidget(
            onLoaded: (context) => const App(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> searchFlow() async {
    await home.tapSearchButton();
    await search.enterTextSearchField(query: 'flutter');
    search.expectSearchResults();
  }
}
