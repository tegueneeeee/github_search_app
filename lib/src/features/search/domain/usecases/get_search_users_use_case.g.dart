// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_users_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchUsersUseCaseHash() =>
    r'069d9d40cedd496f85232cb4f095ad55610b2efd';

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

abstract class _$GetSearchUsersUseCase
    extends BuildlessAutoDisposeAsyncNotifier<List<UserBasicInfoEntity>> {
  late final String query;
  late final int perPage;
  late final int page;

  FutureOr<List<UserBasicInfoEntity>> build({
    required String query,
    required int perPage,
    required int page,
  });
}

/// See also [GetSearchUsersUseCase].
@ProviderFor(GetSearchUsersUseCase)
const getSearchUsersUseCaseProvider = GetSearchUsersUseCaseFamily();

/// See also [GetSearchUsersUseCase].
class GetSearchUsersUseCaseFamily
    extends Family<AsyncValue<List<UserBasicInfoEntity>>> {
  /// See also [GetSearchUsersUseCase].
  const GetSearchUsersUseCaseFamily();

  /// See also [GetSearchUsersUseCase].
  GetSearchUsersUseCaseProvider call({
    required String query,
    required int perPage,
    required int page,
  }) {
    return GetSearchUsersUseCaseProvider(
      query: query,
      perPage: perPage,
      page: page,
    );
  }

  @override
  GetSearchUsersUseCaseProvider getProviderOverride(
    covariant GetSearchUsersUseCaseProvider provider,
  ) {
    return call(
      query: provider.query,
      perPage: provider.perPage,
      page: provider.page,
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
  String? get name => r'getSearchUsersUseCaseProvider';
}

/// See also [GetSearchUsersUseCase].
class GetSearchUsersUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetSearchUsersUseCase,
        List<UserBasicInfoEntity>> {
  /// See also [GetSearchUsersUseCase].
  GetSearchUsersUseCaseProvider({
    required String query,
    required int perPage,
    required int page,
  }) : this._internal(
          () => GetSearchUsersUseCase()
            ..query = query
            ..perPage = perPage
            ..page = page,
          from: getSearchUsersUseCaseProvider,
          name: r'getSearchUsersUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchUsersUseCaseHash,
          dependencies: GetSearchUsersUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetSearchUsersUseCaseFamily._allTransitiveDependencies,
          query: query,
          perPage: perPage,
          page: page,
        );

  GetSearchUsersUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.perPage,
    required this.page,
  }) : super.internal();

  final String query;
  final int perPage;
  final int page;

  @override
  FutureOr<List<UserBasicInfoEntity>> runNotifierBuild(
    covariant GetSearchUsersUseCase notifier,
  ) {
    return notifier.build(
      query: query,
      perPage: perPage,
      page: page,
    );
  }

  @override
  Override overrideWith(GetSearchUsersUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetSearchUsersUseCaseProvider._internal(
        () => create()
          ..query = query
          ..perPage = perPage
          ..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        perPage: perPage,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetSearchUsersUseCase,
      List<UserBasicInfoEntity>> createElement() {
    return _GetSearchUsersUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchUsersUseCaseProvider &&
        other.query == query &&
        other.perPage == perPage &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSearchUsersUseCaseRef
    on AutoDisposeAsyncNotifierProviderRef<List<UserBasicInfoEntity>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `page` of this provider.
  int get page;
}

class _GetSearchUsersUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetSearchUsersUseCase,
        List<UserBasicInfoEntity>> with GetSearchUsersUseCaseRef {
  _GetSearchUsersUseCaseProviderElement(super.provider);

  @override
  String get query => (origin as GetSearchUsersUseCaseProvider).query;
  @override
  int get perPage => (origin as GetSearchUsersUseCaseProvider).perPage;
  @override
  int get page => (origin as GetSearchUsersUseCaseProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
