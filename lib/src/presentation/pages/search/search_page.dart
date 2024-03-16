import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/presentation/base/base_page.dart';
import 'package:github_search_app/src/presentation/base/base_widget.dart';
import 'package:github_search_app/src/presentation/pages/search/view_model/search_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'widgets/app_bar.dart';
part 'widgets/empty_indicator.dart';

class SearchPage extends BasePage {
  const SearchPage({super.key});

  @override
  Widget buildBody(BuildContext context, WidgetRef ref) => Stack(
        children: [
          _EmptyIndicator(),
        ],
      );

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) =>
      _AppBar();

  @override
  EdgeInsetsGeometry get pagePadding => EdgeInsets.zero;
}
