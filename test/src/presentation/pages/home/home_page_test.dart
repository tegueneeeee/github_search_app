import 'package:flutter_test/flutter_test.dart';

import '../../../robot.dart';

void main() {
  group(
    'HomePage',
    () {
      testWidgets(
        'When tap search text field route to SearchPage',
        (tester) async {
          await tester.runAsync(
            () async {
              final robot = Robot(tester);
              await robot.pumpAppWithFakes();
              await robot.home.tapSearchButton();
              robot.search.expectPage();
            },
          );
        },
      );
    },
  );
}
