import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/presentation/pages/search/search_page.dart';
import 'package:github_search_app/src/presentation/widgets/search_text_field_hero.dart';

import '../pump_page_with_fakes.dart';

class SearchRobot {
  const SearchRobot(this.tester);

  final WidgetTester tester;

  Future<void> pumpPageWithFakes() async {
    await PumpPageWithFakes(
      tester: tester,
      page: const SearchPage(),
    ).pumpPageWithFakes();
  }

  void expectSearchResults() {
    final searchResults = find.byKey(SearchPage.optionListViewKey);
    expect(searchResults, findsOneWidget);
  }

  void expectEmptyIndicatorOpacity({
    required double opacity,
  }) {
    final emptyIndicator = tester
        .widget<AnimatedOpacity>(find.byKey(SearchPage.emptyIndicatorKey));
    expect(emptyIndicator.opacity, opacity);
  }

  Future<void> tapCancelButton() async {
    final cancelButton = find.byKey(SearchPage.cancelButtonKey);
    expect(cancelButton, findsOneWidget);
    await tester.tap(cancelButton);
    await tester.pumpAndSettle();
  }

  Future<void> tapOption({
    required String option,
    required String query,
  }) async {
    final optionWidget = find.text('$option $query');
    expect(optionWidget, findsOneWidget);
    await tester.tap(optionWidget);
    await tester.pumpAndSettle();
  }

  Future<void> enterTextSearchField({
    required String query,
  }) async {
    final searchField = find.byType(SearchTextFieldHero);
    await tester.enterText(searchField, query);
    await tester.pumpAndSettle();
  }
}
