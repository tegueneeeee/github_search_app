import 'package:flutter/cupertino.dart';
import 'package:github_search_app/src/presentation/pages/home/providers/home_focus_node_provider.dart';
import 'package:github_search_app/src/presentation/pages/home/providers/home_scroll_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class HomeState {
  ScrollController scrollController(WidgetRef ref) =>
      ref.watch(homeScrollControllerProvider);
  FocusNode focusNode(WidgetRef ref) => ref.watch(homeFocusNodeProvider);
}
