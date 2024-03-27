part of '../searched_page.dart';

class _UserListTile extends StatelessWidget {
  const _UserListTile({
    required this.user,
  });

  final UserBasicInfoEntity user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.goNamed(
        DetailRouteData.name,
        queryParameters: {
          'category': GithubElementCategory.user.name,
          'query': user.userName,
        },
      ),
      leading: ProfileImage(
        imageUrl: user.avatarUrl,
        size: 32,
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          user.userName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
