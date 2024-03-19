import 'package:github_search_app/src/features/search/data/repositories/user_repository_impl.dart';
import 'package:github_search_app/src/features/search/domain/entities/user/user_detail_info_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_user_detail_info_use_case.g.dart';

@riverpod
class GetUserDetailInfoUseCase extends _$GetUserDetailInfoUseCase {
  @override
  FutureOr<UserDetailInfoEntity> build() async {
    return ref.read(userRepositoryProvider).getUserDetailInfo(
          userName: '',
        );
  }
}
