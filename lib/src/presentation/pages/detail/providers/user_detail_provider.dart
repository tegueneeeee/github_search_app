import 'package:github_search_app/src/features/search/data/repositories/user_repository_impl.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_detail_provider.g.dart';

@riverpod
Future<UserDetailInfoEntity> userDetail(
  UserDetailRef ref, {
  required String userName,
}) {
  return ref.read(userRepositoryProvider).getUserDetail(userName: userName);
}
