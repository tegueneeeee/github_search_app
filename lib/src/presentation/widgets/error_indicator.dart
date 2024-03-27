import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:github_search_app/src/config/app_colors.dart';
import 'package:github_search_app/src/core/gen/assets.gen.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.errorIndicator.svg(),
          const Gap(16),
          Text(
            'An error occurred',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.troutGrey,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
