part of common;

class EmptyDataWidget extends ConsumerWidget {
  final VoidCallback? onRefresh;
  const EmptyDataWidget({super.key, this.onRefresh});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.emptyBox.svg(
            width: 200,
            height: 200,
            colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
          ),
          Text(context.localizations('common.noData')),
          const SizedBox(height: kMedium),
          if (onRefresh != null) ...[
            IconButton(onPressed: onRefresh, icon: const Icon(Icons.refresh)),
          ],
        ],
      ),
    );
  }
}
