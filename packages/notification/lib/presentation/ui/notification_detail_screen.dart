part of notification;

class NotificationDetailScreen extends ConsumerWidget {
  final model.Notification notification;

  const NotificationDetailScreen({super.key, required this.notification});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.themeColor.colorScheme;
    final textTheme = context.themeColor.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Notification Detail')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with date and read status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  notification.dateTimeDifferance,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.outline,
                  ),
                ),
                if (notification.isRead)
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 16,
                        color: colorScheme.outline,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Read',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            const SizedBox(height: kMedium),

            // Title
            Text(
              notification.title,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: kMedium),

            // Content
            Text(
              notification.content,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),

            // Image if available
            if (notification.image != null) ...[
              const SizedBox(height: kLarge),
              ClipRRect(
                borderRadius: BorderRadius.circular(kSmall),
                child: Image.network(
                  notification.image!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: double.infinity,
                      color: colorScheme.surfaceContainerHighest,
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
            ],

            // Link if available
            if (notification.link != null) ...[
              const SizedBox(height: kLarge),
              FilledButton.icon(
                onPressed: () {
                  // Handle link navigation
                },
                icon: const Icon(Icons.link),
                label: const Text('Open Link'),
              ),
            ],

            // Created date
            const SizedBox(height: kLarge),
            Text(
              'Created on: ${notification.createdAt}',
              style: textTheme.bodySmall?.copyWith(color: colorScheme.outline),
            ),
          ],
        ),
      ),
    );
  }
}
