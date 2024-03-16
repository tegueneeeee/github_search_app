import 'package:github_search_app/src/core/router/routes.dart';
import 'package:github_search_app/src/presentation/pages/home/providers/home_focus_node_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class HomeEvent {
  void setFocusNode(WidgetRef ref) {
    final focusNode = ref.read(homeFocusNodeProvider);
    focusNode.addListener(
      () {
        if (focusNode.hasFocus) {
          focusNode.unfocus();
          ref.context.pushNamed(SearchRouteData.name);
        }
      },
    );
  }
}
