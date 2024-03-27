// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_detail_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserDetailUseCaseHash() =>
    r'f8bf19a0e85f97b461f1b68231c1d384c9567eab';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GetUserDetailUseCase
    extends BuildlessAutoDisposeAsyncNotifier<UserDetailInfoEntity> {
  late final String userName;

  FutureOr<UserDetailInfoEntity> build({
    required String userName,
  });
}

/// See also [GetUserDetailUseCase].
@ProviderFor(GetUserDetailUseCase)
const getUserDetailUseCaseProvider = GetUserDetailUseCaseFamily();

/// See also [GetUserDetailUseCase].
class GetUserDetailUseCaseFamily
    extends Family<AsyncValue<UserDetailInfoEntity>> {
  /// See also [GetUserDetailUseCase].
  const GetUserDetailUseCaseFamily();

  /// See also [GetUserDetailUseCase].
  GetUserDetailUseCaseProvider call({
    required String userName,
  }) {
    return GetUserDetailUseCaseProvider(
      userName: userName,
    );
  }

  @override
  GetUserDetailUseCaseProvider getProviderOverride(
    covariant GetUserDetailUseCaseProvider provider,
  ) {
    return call(
      userName: provider.userName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUserDetailUseCaseProvider';
}

/// See also [GetUserDetailUseCase].
class GetUserDetailUseCaseProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GetUserDetailUseCase, UserDetailInfoEntity> {
  /// See also [GetUserDetailUseCase].
  GetUserDetailUseCaseProvider({
    required String userName,
  }) : this._internal(
          () => GetUserDetailUseCase()..userName = userName,
          from: getUserDetailUseCaseProvider,
          name: r'getUserDetailUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserDetailUseCaseHash,
          dependencies: GetUserDetailUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetUserDetailUseCaseFamily._allTransitiveDependencies,
          userName: userName,
        );

  GetUserDetailUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
  }) : super.internal();

  final String userName;

  @override
  FutureOr<UserDetailInfoEntity> runNotifierBuild(
    covariant GetUserDetailUseCase notifier,
  ) {
    return notifier.build(
      userName: userName,
    );
  }

  @override
  Override overrideWith(GetUserDetailUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetUserDetailUseCaseProvider._internal(
        () => create()..userName = userName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetUserDetailUseCase,
      UserDetailInfoEntity> createElement() {
    return _GetUserDetailUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserDetailUseCaseProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUserDetailUseCaseRef
    on AutoDisposeAsyncNotifierProviderRef<UserDetailInfoEntity> {
  /// The parameter `userName` of this provider.
  String get userName;
}

class _GetUserDetailUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetUserDetailUseCase,
        UserDetailInfoEntity> with GetUserDetailUseCaseRef {
  _GetUserDetailUseCaseProviderElement(super.provider);

  @override
  String get userName => (origin as GetUserDetailUseCaseProvider).userName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
