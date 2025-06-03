part of 'package:attendance/attendance.dart';

class CurrentAddressWidget extends ConsumerWidget {
  const CurrentAddressWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentAddress = ref.watch(
      mapControllerProvider.select((value) => value.currentAddress),
    );
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(Icons.location_city_rounded, color: colorScheme.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Current Address".hardcoded,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    currentAddress?.isEmpty == true
                        ? "No address available".hardcoded
                        : currentAddress ?? "",
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
              onPressed:
                  currentAddress?.isEmpty == true
                      ? null
                      : () {
                        Clipboard.setData(
                          ClipboardData(text: currentAddress ?? ""),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Address copied to clipboard".hardcoded,
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
