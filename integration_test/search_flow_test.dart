import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';

import '../test/src/robot.dart';

void main() {
  group(
    'Integration test - Search flow',
    () {
      testWidgets(
        'When search user show searched page with user results',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = Robot(tester);
              await robot.pumpAppWithFakes();
              await robot.searchFlow(
                option: AppLocale.values.first
                    .build()
                    .searchPage
                    .optionListView
                    .user,
              );
            },
          );
        },
      );

      testWidgets(
        'When search repository show searched page with repository results',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = Robot(tester);
              await robot.pumpAppWithFakes();
              await robot.searchFlow(
                option: AppLocale.values.first
                    .build()
                    .searchPage
                    .optionListView
                    .repository,
              );
            },
          );
        },
      );
    },
  );
}
