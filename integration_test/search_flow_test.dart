import 'package:flutter_test/flutter_test.dart';

import '../test/src/robot.dart';

void main() {
  setUpAll(() => WidgetController.hitTestWarningShouldBeFatal = true);

  testWidgets(
    'Integration test - Search flow',
    (tester) async {
      await tester.runAsync(
        () async {
          final robot = Robot(tester);
          await robot.pumpAppWithFakes();
          await robot.searchFlow();
        },
      );
    },
  );
}
