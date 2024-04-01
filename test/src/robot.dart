import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/app.dart';
import 'package:github_search_app/src/app_bootstrap.dart';
import 'package:github_search_app/src/app_bootstrap_fakes.dart';
import 'package:github_search_app/src/app_startup.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/pages/home/home_robot.dart';
import 'presentation/pages/search/search_robot.dart';
import 'presentation/pages/searched/searched_robot.dart';

class Robot {
  Robot(this.tester)
      : home = HomeRobot(tester),
        search = SearchRobot(tester),
        searched = SearchedRobot(tester);

  final WidgetTester tester;
  final HomeRobot home;
  final SearchRobot search;
  final SearchedRobot searched;

  Future<void> pumpAppWithFakes() async {
    final appBootstrap = AppBootstrap();
    final container =
        await appBootstrap.createFakesProviderContainer(addDelay: false);
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

  Future<void> searchFlow({
    required String option,
  }) async {
    const query = 'flutter';
    await home.tapSearchButton();
    await search.enterTextSearchField(query: query);
    search.expectSearchResults();
    await search.tapOption(
      option: option,
      query: query,
    );
    searched.expectPage();
  }
}
