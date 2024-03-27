import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/config/app_colors.dart';
import 'package:github_search_app/src/core/gen/assets.gen.dart';
import 'package:github_search_app/src/core/utils/string_hardcoded.dart';
import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/pages/detail/detail_state.dart';
import 'package:github_search_app/src/presentation/widgets/common_app_bar.dart';
import 'package:github_search_app/src/presentation/widgets/error_indicator.dart';
import 'package:github_search_app/src/presentation/widgets/profile_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'widgets/user_detail_async_value_widget.dart';

class DetailPage extends BasePage {
  const DetailPage({
    super.key,
    required this.category,
    required this.query,
  });

  final GithubElementCategory category;
  final String query;

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) => switch (category) {
        GithubElementCategory.user =>
          _UserDetailAsyncValueWidget(userName: query),
        GithubElementCategory.repository => const Text('Repositories'),
        GithubElementCategory.issue => const Text('Issues'),
        GithubElementCategory.pr => const Text('Pull Requests'),
        GithubElementCategory.total => const Text('Total'),
      };

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
