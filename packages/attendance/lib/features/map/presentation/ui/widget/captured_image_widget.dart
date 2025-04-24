part of 'package:attendance/attendance.dart';

class CapturedImageWidget extends ConsumerWidget {
  const CapturedImageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imagePath = ref.watch(
      mapControllerProvider.select((value) => value.imagePath),
    );
    if (imagePath == null) return const SizedBox.shrink();
    return Image.file(File(imagePath), height: 200, width: 200);
  }
}
