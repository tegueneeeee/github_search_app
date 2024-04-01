import 'package:flutter_test/flutter_test.dart';

import 'search_robot.dart';

void main() {
  group(
    'SearchPage',
    () {
      testWidgets(
        'When enter text in search field show search results',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = SearchRobot(tester);
              await robot.pumpPageWithFakes();
              await robot.enterTextSearchField(query: 'flutter');
              robot.expectSearchResults();
            },
          );
        },
      );

      testWidgets(
        'When remove text in search field show empty indicator',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = SearchRobot(tester);
              await robot.pumpPageWithFakes();
              await robot.enterTextSearchField(query: 'flutter');
              robot.expectEmptyIndicatorOpacity(opacity: 0);
              await robot.enterTextSearchField(query: '');
              robot.expectEmptyIndicatorOpacity(opacity: 1);
            },
          );
        },
      );
    },
  );
}
