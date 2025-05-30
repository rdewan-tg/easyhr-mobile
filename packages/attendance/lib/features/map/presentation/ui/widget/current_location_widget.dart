part of 'package:attendance/attendance.dart';

class CurrentLocationWidget extends ConsumerWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPosition = ref.watch(
      mapControllerProvider.select((value) => value.currentPosition),
    );
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Current Location".hardcoded,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    currentPosition == null
                        ? context.localizations("attendance.noLocation")
                        : 'Lat: ${currentPosition.latitude.toStringAsFixed(7)}, Long: ${currentPosition.longitude.toStringAsFixed(7)}',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: colorScheme.secondaryContainer,
                foregroundColor: colorScheme.onSecondaryContainer,
              ),
              onPressed: currentPosition == null
                  ? null
                  : () {
                      Clipboard.setData(
                        ClipboardData(
                          text:
                              '${currentPosition.latitude.toStringAsFixed(7)},${currentPosition.longitude.toStringAsFixed(7)}',
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            context
                                .localizations("attendance.copiedToClipboard"),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
              icon: const Icon(Icons.content_copy_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
