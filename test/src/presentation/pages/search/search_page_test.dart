import 'package:flutter_test/flutter_test.dart';

import '../../../robot.dart';

void main() {
  group(
    'SearchPage',
    () {
      testWidgets(
        'When tap cancel button route to HomePage',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = Robot(tester);
              await robot.pumpAppWithFakes();
              await robot.home.tapSearchButton();
              await robot.search.tapCancelButton();
              robot.home.expectPage();
            },
          );
        },
      );
      testWidgets(
        'When enter text in search field show search results',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = Robot(tester);
              await robot.pumpAppWithFakes();
              await robot.home.tapSearchButton();
              await robot.search.enterTextSearchField(query: 'flutter');
              robot.search.expectSearchResults();
            },
          );
        },
      );

      testWidgets(
        'When remove text in search field show empty indicator',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = Robot(tester);
              await robot.pumpAppWithFakes();
              await robot.home.tapSearchButton();
              await robot.search.enterTextSearchField(query: 'flutter');
              robot.search.expectEmptyIndicatorOpacity(opacity: 0);
              await robot.search.enterTextSearchField(query: '');
              robot.search.expectEmptyIndicatorOpacity(opacity: 1);
            },
          );
        },
      );
    },
  );
}
