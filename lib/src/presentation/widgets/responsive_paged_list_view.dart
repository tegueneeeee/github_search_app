import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/core/gen/assets.gen.dart';
import 'package:github_search_app/src/core/router/routes.dart';
import 'package:github_search_app/src/core/utils/string_hardcoded.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ResponsivePagedListView<T> extends StatelessWidget {
  const ResponsivePagedListView({
    super.key,
    required this.pagingController,
    required this.itemBuilder,
    this.firstLoadingView,
    this.separateView,
    this.scrollController,
    this.physics,
  });

  final Widget? firstLoadingView;
  final Widget? separateView;
  final PagingController<int, T> pagingController;
  final ItemWidgetBuilder<T> itemBuilder;
  final ScrollController? scrollController;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, T>.separated(
      physics: physics,
      scrollController: scrollController,
      pagingController: pagingController,
      separatorBuilder: (_, __) => separateView ?? const Gap(0),
      builderDelegate: PagedChildBuilderDelegate<T>(
        animateTransitions: true,
        itemBuilder: itemBuilder,
        firstPageProgressIndicatorBuilder: (context) =>
            firstLoadingView ??
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
        firstPageErrorIndicatorBuilder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(16),
            TextButton(
              onPressed: () => context.goNamed(HomeRouteData.name),
              child: Text(
                'go to home'.hardcoded,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        newPageProgressIndicatorBuilder: (context) => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        newPageErrorIndicatorBuilder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(16),
            TextButton(
              onPressed: () => context.goNamed(HomeRouteData.name),
              child: Text(
                'retry'.hardcoded,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        noItemsFoundIndicatorBuilder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.errorIndicator.svg(),
            const Gap(16),
            Text(
              'No items found'.hardcoded,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
