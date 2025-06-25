part of notification;

class NotificationList extends ConsumerStatefulWidget {
  const NotificationList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationListState();
}

class _NotificationListState extends ConsumerState<NotificationList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void _setScrollController() {
    final provider = ref.read(appScrollControllerProvider.notifier);
    provider.setScrollController(_scrollController);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifications = ref.watch(
      notificationControllerProvider.select((value) => value.notifications),
    );

    if (notifications.isEmpty) {
      return const EmptyDataWidget();
    }
    final colorScheme = context.themeColor.colorScheme;
    final textTheme = context.themeColor.textTheme;

    return VisibilityDetector(
      key: const Key("notification_list"),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 1) {
          _setScrollController();
        }
      },
      child: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.read(notificationControllerProvider.notifier).getNotifications();
        },
        child: ListView.separated(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(
            vertical: kMedium,
            horizontal: kMedium,
          ),
          itemCount: notifications.length,
          separatorBuilder: (context, index) => const SizedBox(height: kSmall),
          itemBuilder: (context, index) {
            final item = notifications[index];
            return Card(
              elevation: 0,
              color: item.isRead
                  ? colorScheme.surfaceContainerLow
                  : colorScheme.primaryContainer.withAlpha((255 * 0.3).round()),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kMedium),
                side: BorderSide(
                  color: item.isRead
                      ? colorScheme.outlineVariant
                      : colorScheme.primary.withAlpha((255 * 0.5).round()),
                  width: 1,
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(kMedium),
                onTap: () {
                  if (!item.isRead) {
                    ref
                        .read(notificationControllerProvider.notifier)
                        .markAsRead(item.id);
                  }
                  // Navigate to notification detail screen
                  context.push(
                    '/$notificationRoute/$notificationDetailRoute',
                    extra: item,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(kMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              item.title,
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: item.isRead
                                    ? FontWeight.normal
                                    : FontWeight.bold,
                                color: item.isRead
                                    ? colorScheme.onSurface
                                    : colorScheme.primary,
                              ),
                            ),
                          ),
                          if (!item.isRead)
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: colorScheme.primary,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: kSmall),
                      Text(
                        item.content,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.dateTimeDifferance,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.outline,
                            ),
                          ),
                          if (item.isRead)
                            Icon(
                              Icons.check_circle_outline,
                              size: 16,
                              color: colorScheme.outline,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
