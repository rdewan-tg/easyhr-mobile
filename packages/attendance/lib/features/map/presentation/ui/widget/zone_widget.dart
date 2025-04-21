part of 'package:attendance/attendance.dart';

class ZoneWidget extends ConsumerStatefulWidget {
  const ZoneWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ZoneWidgetState();
}

class _ZoneWidgetState extends ConsumerState<ZoneWidget> {
  final TextEditingController controller = TextEditingController();
  final zones = [
    {"name": "Zone 1", "latitude": 12.9716, "longitude": 77.5946},
    {"name": "Zone 2", "latitude": 12.9716, "longitude": 77.5946},
    {"name": "Zone 3", "latitude": 12.9716, "longitude": 77.5946},
    {"name": "Zone 4", "latitude": 12.9716, "longitude": 77.5946},
    {"name": "Zone 5", "latitude": 12.9716, "longitude": 77.5946},
  ];

  @override
  Widget build(BuildContext context) {
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
                  value: zone["name"] as String,
                  label: zone["name"] as String,
                ),
              )
              .toList(),
    );
  }
}
