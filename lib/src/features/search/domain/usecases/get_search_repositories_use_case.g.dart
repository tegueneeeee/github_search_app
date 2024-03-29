// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_repositories_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchRepositoriesUseCaseHash() =>
    r'202149c80c5b58dd8166e20f26ad69f9d4fe1e13';

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

abstract class _$GetSearchRepositoriesUseCase
    extends BuildlessAutoDisposeAsyncNotifier<List<RepositoryBasicInfoEntity>> {
  late final String query;
  late final int perPage;
  late final int page;

  FutureOr<List<RepositoryBasicInfoEntity>> build({
    required String query,
    required int perPage,
    required int page,
  });
}

/// See also [GetSearchRepositoriesUseCase].
@ProviderFor(GetSearchRepositoriesUseCase)
const getSearchRepositoriesUseCaseProvider =
    GetSearchRepositoriesUseCaseFamily();

/// See also [GetSearchRepositoriesUseCase].
class GetSearchRepositoriesUseCaseFamily
    extends Family<AsyncValue<List<RepositoryBasicInfoEntity>>> {
  /// See also [GetSearchRepositoriesUseCase].
  const GetSearchRepositoriesUseCaseFamily();

  /// See also [GetSearchRepositoriesUseCase].
  GetSearchRepositoriesUseCaseProvider call({
    required String query,
    required int perPage,
    required int page,
  }) {
    return GetSearchRepositoriesUseCaseProvider(
      query: query,
      perPage: perPage,
      page: page,
    );
  }

  @override
  GetSearchRepositoriesUseCaseProvider getProviderOverride(
    covariant GetSearchRepositoriesUseCaseProvider provider,
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
  String? get name => r'getSearchRepositoriesUseCaseProvider';
}

/// See also [GetSearchRepositoriesUseCase].
class GetSearchRepositoriesUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetSearchRepositoriesUseCase,
        List<RepositoryBasicInfoEntity>> {
  /// See also [GetSearchRepositoriesUseCase].
  GetSearchRepositoriesUseCaseProvider({
    required String query,
    required int perPage,
    required int page,
  }) : this._internal(
          () => GetSearchRepositoriesUseCase()
            ..query = query
            ..perPage = perPage
            ..page = page,
          from: getSearchRepositoriesUseCaseProvider,
          name: r'getSearchRepositoriesUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchRepositoriesUseCaseHash,
          dependencies: GetSearchRepositoriesUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetSearchRepositoriesUseCaseFamily._allTransitiveDependencies,
          query: query,
          perPage: perPage,
          page: page,
        );

  GetSearchRepositoriesUseCaseProvider._internal(
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
  FutureOr<List<RepositoryBasicInfoEntity>> runNotifierBuild(
    covariant GetSearchRepositoriesUseCase notifier,
  ) {
    return notifier.build(
      query: query,
      perPage: perPage,
      page: page,
    );
  }

  @override
  Override overrideWith(GetSearchRepositoriesUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetSearchRepositoriesUseCaseProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GetSearchRepositoriesUseCase,
      List<RepositoryBasicInfoEntity>> createElement() {
    return _GetSearchRepositoriesUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchRepositoriesUseCaseProvider &&
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

mixin GetSearchRepositoriesUseCaseRef
    on AutoDisposeAsyncNotifierProviderRef<List<RepositoryBasicInfoEntity>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `page` of this provider.
  int get page;
}

class _GetSearchRepositoriesUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        GetSearchRepositoriesUseCase,
        List<RepositoryBasicInfoEntity>> with GetSearchRepositoriesUseCaseRef {
  _GetSearchRepositoriesUseCaseProviderElement(super.provider);

  @override
  String get query => (origin as GetSearchRepositoriesUseCaseProvider).query;
  @override
  int get perPage => (origin as GetSearchRepositoriesUseCaseProvider).perPage;
  @override
  int get page => (origin as GetSearchRepositoriesUseCaseProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
