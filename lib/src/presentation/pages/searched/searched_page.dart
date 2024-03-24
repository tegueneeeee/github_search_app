import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/core/utils/string_hardcoded.dart';
import 'package:github_search_app/src/features/search/data/repositories/user_repository_impl.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_entity.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_basic_info_entity.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/widgets/common_app_bar.dart';
import 'package:github_search_app/src/presentation/widgets/responsive_paged_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'searched_event.dart';
part 'searched_state.dart';
part 'widgets/paged_user_list_view.dart';
part 'widgets/user_list_tile.dart';

class SearchedPage extends BasePage {
  const SearchedPage({
    super.key,
    required this.category,
    required this.query,
  });

  final GithubElementCategory category;
  final String query;

  static const perPage = 30;
  static const firstPage = 1;

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) => Center(
        child: switch (category) {
          GithubElementCategory.user => _PagedUserListView(
              query: query,
            ),
          GithubElementCategory.repository => const Text('Repositories'),
          GithubElementCategory.issue => const Text('Issues'),
          GithubElementCategory.pr => const Text('Pull Requests'),
          GithubElementCategory.total => const Text('Total'),
        },
      );

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) =>
      CommonAppBar(
        title: switch (category) {
          GithubElementCategory.user => 'Users'.hardcoded,
          GithubElementCategory.repository => 'Repositories'.hardcoded,
          GithubElementCategory.issue => 'Issues'.hardcoded,
          GithubElementCategory.pr => 'Pull Requests'.hardcoded,
          GithubElementCategory.total => 'Total'.hardcoded,
        },
      );
}
