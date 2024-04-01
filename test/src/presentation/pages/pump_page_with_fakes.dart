import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/src/app_bootstrap.dart';
import 'package:github_search_app/src/app_bootstrap_fakes.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PumpPageWithFakes {
  PumpPageWithFakes({
    required this.tester,
    required this.page,
  });

  final WidgetTester tester;
  final Widget page;

  Future<void> pumpPageWithFakes() async {
    final appBootstrap = AppBootstrap();
    final container =
        await appBootstrap.createFakesProviderContainer(addDelay: false);
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: TranslationProvider(
          child: MaterialApp(
            home: page,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }
}
