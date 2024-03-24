part of '../searched_page.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.user,
  });

  final UserBasicInfoEntity user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.shadow,
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          ),
        ),
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
