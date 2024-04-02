part of '../search_page.dart';

class _AppBar extends ConsumerWidget
    with SearchEvent
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) => PreferredSize(
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
                    onChanged: (text) => onChanged(ref, text),
                    onSubmitted: (query) => onSubmitted(
                      ref,
                      query: query,
                    ),
                    autofocus: true,
                  ),
                ),
                const Gap(4),
                TextButton(
                  key: SearchPage.cancelButtonKey,
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    Translations.of(context).searchPage.appBar.cancel,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(62);
}
