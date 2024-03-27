part of '../detail_page.dart';

class _UserDetailAsyncValueWidget extends ConsumerWidget with DetailState {
  const _UserDetailAsyncValueWidget({
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return userDetail(
      ref,
      userName: userName,
    ).when(
      data: (user) => ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const Gap(16),
          Row(
            children: [
              ProfileImage(
                imageUrl: user.avatarUrl,
                size: 64,
              ),
              const Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.userName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Builder(
                    builder: (context) => user.name != null
                        ? Text(
                            user.name ?? '',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: AppColors.troutGrey,
                                    ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ],
          ),
          Builder(
            builder: (context) => user.bio != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      user.bio ?? '',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          Builder(
            builder: (context) => user.location != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Assets.icons.location.svg(),
                        const Gap(4),
                        Text(
                          user.location ?? '',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.troutGrey,
                                  ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          const Gap(8),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: user.followerCount.toString(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(
                        width: 4,
                      ),
                    ),
                    TextSpan(
                      text: '팔로워'.hardcoded,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.troutGrey,
                          ),
                    ),
                    const TextSpan(
                      text: '・',
                    ),
                    TextSpan(
                      text: user.followingCount.toString(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(
                        width: 4,
                      ),
                    ),
                    TextSpan(
                      text: '팔로우하는 중'.hardcoded,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.troutGrey,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      error: (error, _) => const Center(child: ErrorIndicator()),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
