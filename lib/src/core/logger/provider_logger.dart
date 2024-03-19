import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _ProviderEvent {
  add,
  update,
  dispose,
  fail,
}

class ProviderLogger implements ProviderObserver {
  void _print({
    required _ProviderEvent event,
    required ProviderBase<Object?> provider,
    Object? value,
  }) {
    final eventName = event.name.toUpperCase();
    final providerName = provider.name ?? provider.runtimeType;

    final result = (value == null) ? '' : '- $value';

    log('[$eventName] $providerName $result');
  }

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer _,
  ) {
    _print(
      event: _ProviderEvent.add,
      provider: provider,
      value: value,
    );
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? _,
    Object? newValue,
    ProviderContainer __,
  ) {
    _print(
      event: _ProviderEvent.update,
      provider: provider,
      value: newValue,
    );
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    _print(
      event: _ProviderEvent.dispose,
      provider: provider,
    );
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace _,
    ProviderContainer __,
  ) {
    _print(
      event: _ProviderEvent.fail,
      provider: provider,
      value: error,
    );
  }
}
