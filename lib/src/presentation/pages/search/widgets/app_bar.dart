part of '../search_page.dart';

class _AppBar extends HookConsumerWidget implements PreferredSizeWidget {
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
                child: Hero(
                  tag: 'search',
                  child: SizedBox(
                    child: CupertinoSearchTextField(
                      controller: controller,
                      placeholder: 'Search GitHub',
                      onChanged: (text) =>
                          ref.read(searchViewModelProvider.notifier).onEvent(
                                SearchEventOnChanged(text: text),
                              ),
                      onSubmitted: (query) {
                        ref.read(searchViewModelProvider.notifier).onEvent(
                              SearchEventOnSubmitted(query: query),
                            );
                        controller.clear();
                      },
                      autofocus: true,
                    ),
                  ),
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
