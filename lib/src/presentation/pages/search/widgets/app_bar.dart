part of '../search_page.dart';

class _AppBar extends HookConsumerWidget
    with SearchEvent
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    return PreferredSize(
      preferredSize: preferredSize,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.2,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SearchTextFieldHero(
                  controller: controller,
                  onChanged: (text) => onChanged(ref, text),
                  onSubmitted: (query) => onSubmitted(
                    ref,
                    query: query,
                    controller: controller,
                  ),
                  autofocus: true,
                ),
              ),
              const Gap(4),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text(
                  'Cancel',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(62);
}
