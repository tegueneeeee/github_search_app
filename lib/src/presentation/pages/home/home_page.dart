import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:github_search_app/src/core/router/routes.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/widgets/search_text_field_hero.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverGap(48),
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
              context,
            ),
            sliver: SliverToBoxAdapter(
              child: SearchTextFieldHero(
                onTap: () {
                  const SearchRouteData().push<void>(context);
                },
              ),
            ),
          ),
        ],
        body: CustomScrollView(
          slivers: [
            const SliverGap(16),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Translations.of(context).homePage.favorite,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            const SliverGap(8),
          ],
        ),
      ),
    );
  }
}
