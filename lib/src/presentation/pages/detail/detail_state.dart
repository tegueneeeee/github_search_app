import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';
import 'package:github_search_app/src/presentation/pages/detail/providers/user_detail_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin DetailState {
  AsyncValue<UserDetailInfoEntity> userDetail(
    WidgetRef ref, {
    required String userName,
  }) =>
      ref.watch(userDetailProvider(userName: userName));
}
