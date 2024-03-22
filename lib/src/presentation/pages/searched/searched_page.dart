import 'package:flutter/material.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/widgets/common_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchedPage extends BasePage {
  const SearchedPage({
    super.key,
    required this.category,
    required this.query,
  });

  final GithubElementCategory category;
  final String query;

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) => const Center(
        child: Text('Searched Page'),
      );

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) =>
      CommonAppBar(
        title: switch (category) {
          GithubElementCategory.user => 'Users',
          GithubElementCategory.repository => 'Repositories',
          GithubElementCategory.issue => 'Issues',
          GithubElementCategory.pr => 'Pull Requests',
          GithubElementCategory.total => 'Total',
        },
      );
}
