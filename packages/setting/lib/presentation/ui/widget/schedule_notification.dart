part of setting;

class ScheduleNotification extends ConsumerStatefulWidget {
  const ScheduleNotification({super.key});

  @override
  ConsumerState<ScheduleNotification> createState() =>
      _ScheduleNotificationState();
}

class _ScheduleNotificationState extends ConsumerState<ScheduleNotification> {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(settingControllerProvider.notifier).getScheduleTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheduleTime = ref.watch(
      settingControllerProvider.select((value) => value.scheduleTime),
    );
    _controller.text = scheduleTime.toString();
    return Padding(
      padding: const EdgeInsets.all(kMedium),
      child: Column(
        children: [
          const SizedBox(height: kMedium),
          Text(
            context.localizations('setting.scheduleTimeTitle'),
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: kMedium),
          Form(
            key: _formKey,
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: context.localizations('setting.scheduleTimeLabel'),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a schedule time'.hardcoded;
                }
                if (value == '0') {
                  return 'Schedule time should be greater than 0'.hardcoded;
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: kMedium),
          const SizedBox(height: 24),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: kMedium,
                horizontal: kMedium,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kSmall),
              ),
            ),
            label: Text(
              context.localizations('setting.enablePushNotification'),
              style: const TextStyle(fontSize: kMedium),
            ),
            icon: const Icon(Icons.notifications),
            onPressed: _setScheduleTime,
          ),
          const SizedBox(height: kMedium),
        ],
      ),
    );
  }

  void _setScheduleTime() async {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      final hasPermission =
          await ref
              .read(localPushNotificationProvider)
              .requestAlarmPermission();

      if (hasPermission) {
        ref
            .read(settingControllerProvider.notifier)
            .setScheduleTime(_controller.text);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: context.themeColor.colorScheme.error,
              content: Text('Permission denied'.hardcoded),
            ),
          );
        }
      }
    }
  }
}
