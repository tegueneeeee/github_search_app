import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/presentation/pages/searched/searched_page.dart';

class SearchedRobot {
  const SearchedRobot(this.tester);

  final WidgetTester tester;

  void expectPage() {
    final searchPage = find.byType(SearchedPage);
    expect(searchPage, findsOneWidget);
  }
}
