part of setting;

class NotificationScheduleScreen extends ConsumerStatefulWidget {
  const NotificationScheduleScreen({super.key});

  @override
  ConsumerState<NotificationScheduleScreen> createState() =>
      _NotificationScheduleScreenState();
}

class _NotificationScheduleScreenState
    extends ConsumerState<NotificationScheduleScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(settingControllerProvider.notifier).getNotificationSchedules();
    });
  }

  void _showClearAllNotificationsDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(context.localizations('setting.clearAllNotifications')),
            content: Text(
              context.localizations('setting.clearNotificationsConfirmation'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(context.localizations('setting.cancel')),
              ),
              TextButton(
                onPressed: () {
                  // delete from local storage
                  ref
                      .read(settingControllerProvider.notifier)
                      .removeAllNotificationSchedule();
                  // delete from local notification
                  ref
                      .read(localPushNotificationProvider)
                      .cancelAllLocalNotification();
                  // close dialog
                  Navigator.of(context).pop();
                },
                child: Text(context.localizations('setting.clear')),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('setting.notificationScheduled')),
        actions: [
          MenuAnchor(
            builder: (context, controller, child) {
              return IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
              );
            },
            menuChildren: [
              MenuItemButton(
                onPressed: _showClearAllNotificationsDialog,
                leadingIcon: const Icon(
                  Icons.delete_sweep_outlined,
                  color: Colors.red,
                ),
                child: Text(
                  context.localizations('setting.clearAllNotifications'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: const NotificationSchedules(),
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

    // listen for clear all notifications
    ref.listen(
      settingControllerProvider.select(
        (value) => value.isNotificationScheduleCleared,
      ),
      (previous, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.primary,
              content: Text(
                context.localizations(
                  'setting.notificationsClearedSuccessfully',
                ),
              ),
            ),
          );
        }
      },
    );

    // listen for clear notification schedule
    ref.listen(
      settingControllerProvider.select(
        (value) => value.isNotificationScheduleRemoved,
      ),
      (previous, next) {
        if (next) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: context.themeColor.colorScheme.primary,
              content: Text(
                context.localizations(
                  'setting.notificationScheduleRemovedSuccessfully',
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
