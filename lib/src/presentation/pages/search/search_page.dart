import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/config/app_colors.dart';
import 'package:github_search_app/src/core/gen/assets.gen.dart';
import 'package:github_search_app/src/core/gen/strings.g.dart';
import 'package:github_search_app/src/core/providers/app_locale_provider.dart';
import 'package:github_search_app/src/core/providers/shared_preferences_provider.dart';
import 'package:github_search_app/src/core/router/routes.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/pages/search/states/search_text_state.dart';
import 'package:github_search_app/src/presentation/widgets/search_text_field_hero.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'widgets/app_bar.dart';
part 'widgets/empty_indicator.dart';
part 'widgets/option_list_view.dart';

class SearchPage extends BasePage with SearchState, SearchEvent {
  const SearchPage({super.key});

  static const cancelButtonKey = Key('search_page_cancel_button');
  static const optionListViewKey = Key('search_page_option_list_view');
  static const emptyIndicatorKey = Key('search_page_empty_indicator');

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) => Stack(
        children: [
          if (searchText(ref).isNotEmpty) _OptionListView(),
          _EmptyIndicator(),
        ],
      );

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) =>
      _AppBar();
}
