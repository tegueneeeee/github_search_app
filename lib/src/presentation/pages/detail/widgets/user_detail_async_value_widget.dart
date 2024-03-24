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
      data: (data) => Text(data.userName),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
