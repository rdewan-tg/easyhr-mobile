part of setting;

class CompanySettingScreen extends ConsumerStatefulWidget {
  const CompanySettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompanySettingScreenState();
}

class _CompanySettingScreenState extends ConsumerState<CompanySettingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(settingControllerProvider.notifier).getAllSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    final settings = ref.watch(
      settingControllerProvider.select((value) => value.settings),
    );

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.companySetting')),
      widget: RefreshIndicator(
        onRefresh: () async {
          await ref
              .read(settingControllerProvider.notifier)
              .getCompanySetting();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
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
              SwitchListTile.adaptive(
                title: Text(context.localizations('setting.isCameraEnabled')),
                value: settings['isCameraEnabled'] == 'true',
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _listener() {
    ref.listen(settingControllerProvider.select((value) => value.isLoading), (
      previous,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });

    // listen for error
    ref.listen(settingControllerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 3),
            backgroundColor: context.themeColor.colorScheme.error,
            content: Text(next),
          ),
        );
      }
    });
  }
}
