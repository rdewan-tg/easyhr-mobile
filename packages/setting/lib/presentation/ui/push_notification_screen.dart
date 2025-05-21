part of setting;

class PushNotificationScreen extends ConsumerStatefulWidget {
  const PushNotificationScreen({super.key});

  @override
  ConsumerState<PushNotificationScreen> createState() =>
      _PushNotificationScreenState();
}

class _PushNotificationScreenState
    extends ConsumerState<PushNotificationScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(settingControllerProvider.notifier).getScheduleTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return AppScaffoldScrollable(
      title: Text(context.localizations('setting.pushNotification')),
      widget: const ScheduleNotification(),
    );
  }

  void _listener() {
    // listen for loading
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
            duration: const Duration(seconds: 5),
            backgroundColor: context.themeColor.colorScheme.error,
            content: Text(next),
          ),
        );
      }
    });

    // listen for success
    ref.listen(
      settingControllerProvider.select((value) => value.isScheduleTimeSet),
      (previous, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.primary,
              content: const Text('Schedule time set successfully'),
            ),
          );
        }
      },
    );
  }
}
