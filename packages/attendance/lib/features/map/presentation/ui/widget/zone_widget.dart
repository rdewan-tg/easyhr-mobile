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
      label: Text(
        'Select Zone'.hardcoded,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      requestFocusOnTap: false,
      onSelected: (value) {
        if (value == null) return;
        ref.read(mapControllerProvider.notifier).setZone(value);
      },
      menuStyle: const MenuStyle(
        padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
      ),
      textStyle: const TextStyle(fontSize: 14),
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        constraints: BoxConstraints(maxHeight: 40),
        border: OutlineInputBorder(),
      ),
      dropdownMenuEntries: zones
          .map(
            (zone) =>
                DropdownMenuEntry<String>(value: zone.name, label: zone.name),
          )
          .toList(),
    );
  }
}
