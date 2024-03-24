import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
        newPageProgressIndicatorBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        firstPageProgressIndicatorBuilder: (context) =>
            firstLoadingView ??
            const Center(
              child: CircularProgressIndicator(),
            ),
      ),
    );
  }
}
