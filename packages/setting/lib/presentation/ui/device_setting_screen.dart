part of setting;

class DeviceSettingScreen extends ConsumerStatefulWidget {
  const DeviceSettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeviceSettingScreenState();
}

class _DeviceSettingScreenState extends ConsumerState<DeviceSettingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(settingControllerProvider.notifier).getAllSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(
      settingControllerProvider.select((value) => value.settings),
    );

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.companySetting')),
      widget: Column(
        children: [
          ListTile(
            title: Text(context.localizations('setting.companyCode')),
            subtitle: Text(settings['companyCode'] ?? ''),
          ),
          ListTile(
            title: Text(context.localizations('setting.gpsRadius')),
            subtitle: Text(settings['gpsRadius'] ?? ''),
          ),
          ListTile(
            title: Text(context.localizations('setting.timeZone')),
            subtitle: Text(settings['timeZone'] ?? ''),
          ),
          SwitchListTile.adaptive(
            title: Text(context.localizations('setting.isZonedEnabled')),
            value: settings['isZoneEnabled'] == 'true',
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
