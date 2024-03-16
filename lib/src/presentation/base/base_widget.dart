import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseWidget extends HookConsumerWidget {
  const BaseWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        onInit(ref);
        return () => onDispose(ref);
      },
      const [],
    );

    useOnAppLifecycleStateChange(
      (previous, current) {
        switch (current) {
          case AppLifecycleState.resumed:
            onResumed(ref);
          case AppLifecycleState.paused:
            onPaused(ref);
          case AppLifecycleState.inactive:
            onInactive(ref);
          case AppLifecycleState.detached:
            onDetached(ref);
          case AppLifecycleState.hidden:
            onHidden(ref);
        }
      },
    );
    return wrapWithSafeArea
        ? SafeArea(
            top: setTopSafeArea,
            bottom: setBottomSafeArea,
            child: buildWidget(context, ref),
          )
        : buildWidget(context, ref);
  }

  @protected
  bool get wrapWithSafeArea => true;

  @protected
  bool get setTopSafeArea => true;

  @protected
  bool get setBottomSafeArea => true;

  @protected
  Widget buildWidget(BuildContext context, WidgetRef ref);

  @protected
  void onResumed(
    WidgetRef ref,
  ) {}

  @protected
  void onPaused(
    WidgetRef ref,
  ) {}

  @protected
  void onInactive(
    WidgetRef ref,
  ) {}

  @protected
  void onDetached(
    WidgetRef ref,
  ) {}

  @protected
  void onHidden(
    WidgetRef ref,
  ) {}

  @protected
  void onInit(WidgetRef ref) {}

  @protected
  void onDispose(WidgetRef ref) {}
}
