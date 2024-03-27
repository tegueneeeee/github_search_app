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
        children: const [
          Gap(16),
          Row(),
        ],
      ),
      error: (error, _) => const Center(child: ErrorIndicator()),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
