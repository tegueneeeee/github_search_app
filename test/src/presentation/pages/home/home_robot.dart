import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/presentation/widgets/search_text_field_hero.dart';

class HomeRobot {
  const HomeRobot(this.tester);

  final WidgetTester tester;

  Future<void> tapSearchButton() async {
    final searchButton = find.byType(SearchTextFieldHero);
    expect(searchButton, findsOneWidget);
    await tester.tap(searchButton);
    await tester.pumpAndSettle();
  }
}
