import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BasePage extends HookConsumerWidget {
  const BasePage({super.key});
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
    return PopScope(
      canPop: canPop,
      onPopInvoked: (_) {
        onWillPop(ref);
      },
      child: GestureDetector(
        onTap: preventAutoUnfocus
            ? null
            : () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          color: unSafeAreaColor(context),
          child: wrapWithSafeArea
              ? Padding(
                  padding: pagePadding,
                  child: SafeArea(
                    top: setTopSafeArea,
                    bottom: setBottomSafeArea,
                    child: _buildScaffold(context, ref),
                  ),
                )
              : _buildScaffold(context, ref),
        ),
      ),
    );
  }

  Widget _buildScaffold(BuildContext context, WidgetRef ref) => Scaffold(
        extendBody: extendBodyBehindAppBar,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: buildAppBar(context, ref),
        body: buildBody(context, ref),
        backgroundColor: screenBackgroundColor(context),
        bottomNavigationBar: buildBottomNavigationBar(context),
        bottomSheet: buildBottomSheet(ref),
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: buildFloatingActionButton(ref),
      );

  @protected
  Widget? buildBottomNavigationBar(BuildContext context) => null;

  @protected
  Widget? buildBottomSheet(WidgetRef ref) => null;

  @protected
  Widget buildBody(BuildContext context, WidgetRef ref);

  @protected
  PreferredSizeWidget? buildAppBar(BuildContext context, WidgetRef ref) => null;

  @protected
  Widget? buildFloatingActionButton(WidgetRef ref) => null;

  @protected
  EdgeInsetsGeometry get pagePadding =>
      const EdgeInsets.symmetric(horizontal: 16);

  @protected
  Color? unSafeAreaColor(BuildContext context) =>
      Theme.of(context).colorScheme.background;

  @protected
  bool get resizeToAvoidBottomInset => true;

  @protected
  FloatingActionButtonLocation? get floatingActionButtonLocation => null;

  @protected
  bool get extendBodyBehindAppBar => false;

  @protected
  bool get canPop => true;

  @protected
  Color? screenBackgroundColor(BuildContext context) =>
      Theme.of(context).colorScheme.background;

  @protected
  bool get wrapWithSafeArea => true;

  @protected
  bool get setTopSafeArea => true;

  @protected
  bool get setBottomSafeArea => true;

  @protected
  bool get preventAutoUnfocus => false;

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
  void onInit(
    WidgetRef ref,
  ) {}

  @protected
  void onDispose(
    WidgetRef ref,
  ) {}

  @protected
  void onWillPop(
    WidgetRef ref,
  ) {}
}
