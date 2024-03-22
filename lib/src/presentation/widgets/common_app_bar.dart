import 'package:flutter/material.dart';
import 'package:github_search_app/src/config/app_colors.dart';
import 'package:github_search_app/src/core/gen/assets.gen.dart';
import 'package:go_router/go_router.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.leadingTap,
    this.actions,
  });

  final String? title;
  final VoidCallback? leadingTap;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.2,
              color: AppColors.troutGrey,
            ),
          ),
        ),
        child: AppBar(
          forceMaterialTransparency: true,
          titleSpacing: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leadingWidth: 56,
          actions: actions,
          title: Text(
            title ?? '',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          leading: IconButton(
            onPressed: leadingTap ?? context.pop,
            icon: Assets.icons.arrowLeft.svg(),
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
