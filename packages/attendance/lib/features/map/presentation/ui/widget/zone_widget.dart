part of 'package:attendance/attendance.dart';

class ZoneWidget extends ConsumerStatefulWidget {
  const ZoneWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ZoneWidgetState();
}

class _ZoneWidgetState extends ConsumerState<ZoneWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final zones = ref.watch(
      mapControllerProvider.select((value) => value.currentZones),
    );

    return DropdownMenu(
      width: MediaQuery.of(context).size.width * 0.8,
      controller: controller,
      label: const Text('Select Zone'),
      requestFocusOnTap: false,
      onSelected: (value) {
        if (value == null) return;
        ref.read(mapControllerProvider.notifier).setZone(value);
      },
      menuStyle: const MenuStyle(
        padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true, // reduces vertical height
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        border: OutlineInputBorder(),
      ),
      dropdownMenuEntries:
          zones
              .map(
                (zone) => DropdownMenuEntry<String>(
                  value: zone.name,
                  label: zone.name,
                ),
              )
              .toList(),
    );
  }
}
