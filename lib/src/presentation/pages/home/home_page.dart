import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/base/base_widget.dart';
import 'package:github_search_app/src/presentation/pages/home/home_event.dart';
import 'package:github_search_app/src/presentation/pages/home/home_state.dart';

part 'widgets/search_bar.dart';

class HomePage extends BasePage with HomeState, HomeEvent {
  const HomePage({super.key});

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      controller: scrollController(ref),
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
            child: Text(
              'Favorite User',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SliverGap(8),
        ],
      ),
    );
  }

  @override
  void onInit(WidgetRef ref) {
    setFocusNode(ref);
  }
}
