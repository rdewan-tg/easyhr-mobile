part of 'package:attendance/attendance.dart';

class CurrentLocationWidget extends ConsumerWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPosition = ref.watch(
      mapControllerProvider.select((value) => value.currentPosition),
    );

    return Row(
      children: [
        Text(
          currentPosition == null
              ? 'No location'
              : 'Lat: ${currentPosition.latitude}, Long: ${currentPosition.longitude}',
          style: context.textTheme.labelLarge,
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(Icons.content_copy),
          onPressed: () {
            Clipboard.setData(
              ClipboardData(
                text:
                    '${currentPosition?.latitude},${currentPosition?.longitude}',
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Copied to clipboard')),
            );
          },
        ),
      ],
    );
  }
}
