import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:github_search_app/src/core/router/routes.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/widgets/search_text_field_hero.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'widgets/search_bar.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      controller: scrollController,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SliverGap(48),
        SliverOverlapAbsorber(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
            context,
          ),
          sliver: const SliverToBoxAdapter(
            child: _SearchBar(),
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
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          const SliverGap(8),
        ],
      ),
    );
  }
}
