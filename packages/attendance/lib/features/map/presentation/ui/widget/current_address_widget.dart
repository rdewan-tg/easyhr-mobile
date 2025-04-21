part of 'package:attendance/attendance.dart';
class CurrentAddressWidget extends ConsumerWidget {
  const CurrentAddressWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentAddress  = ref.watch(mapControllerProvider.select((value) => value.currentAddress));
    return Text(currentAddress ?? "");
  }
}