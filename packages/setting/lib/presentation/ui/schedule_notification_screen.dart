part of setting;

class ScheduleNotificationScreen extends ConsumerStatefulWidget {
  const ScheduleNotificationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScheduleNotificationScreenState();
}

class _ScheduleNotificationScreenState
    extends ConsumerState<ScheduleNotificationScreen> {
  // Selected days (Monday to Sunday)
  final List<bool> _selectedDays = List.generate(7, (_) => false);

  // Use current time as default
  late TimeOfDay _selectedTime;

  // Notification title and message
  final TextEditingController _titleController = TextEditingController(
    text: '⏰ EasyHR Reminder',
  );
  final TextEditingController _messageController = TextEditingController(
    text: '📋 Time to check your schedule!',
  );

  // Days of the week labels
  final List<String> _daysOfWeek = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAlarmPermission();
    });
    // Default to Monday selected
    _selectedDays[0] = true;

    // Get user's timezone from settings
    final userTimezone =
        ref.read(settingControllerProvider.notifier).getTimeZone() ??
        'Asia/Kolkata';

    // Get current time in the user's timezone
    final location = tz.getLocation(userTimezone);
    final now = tz.TZDateTime.now(location);

    // Set the time picker to use the timezone-specific time
    _selectedTime = TimeOfDay(hour: now.hour, minute: now.minute);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  // Check alarm permission
  Future<void> _checkAlarmPermission() async {
    final result = await ref
        .read(localPushNotificationProvider)
        .requestAlarmPermission();
    if (!result) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.localizations('setting.alarmPermissionRequired'),
            ),
            duration: const Duration(seconds: 5),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.localizations('setting.alarmPermissionGranted'),
            ),
            duration: const Duration(seconds: 2),
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        );
      }
    }
  }

  // Show time picker dialog with default Material 3 UI
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  // Save notification schedule
  void _saveSchedule() async {
    final result = await ref
        .read(localPushNotificationProvider)
        .requestAlarmPermission();
    // if permission is not granted, return
    if (!result) return;
    // Check if at least one day is selected
    if (!_selectedDays.contains(true)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            context.localizations('setting.pleaseSelectAtLeastOneDay'),
          ),
          duration: const Duration(seconds: 2),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
      return;
    }

    // Schedule notifications for each selected day
    for (int i = 0; i < _selectedDays.length; i++) {
      if (_selectedDays[i]) {
        // Convert index to day of week (1 = Monday, 7 = Sunday)
        final dayOfWeek = i + 1;

        // Generate a unique ID based on day and time
        // Format: 1000*day + 60*hour + minute
        // This ensures unique IDs even if multiple notifications are scheduled for the same day
        final uniqueId =
            1000 * dayOfWeek + 60 * _selectedTime.hour + _selectedTime.minute;

        // Schedule the notification
        ref
            .read(localPushNotificationProvider)
            .scheduleWeeklyNotification(
              id: uniqueId,
              title: _titleController.text,
              body: _messageController.text,
              dayOfWeek: dayOfWeek,
              hour: _selectedTime.hour,
              minute: _selectedTime.minute,
            );
        // store notification schedule in local storage
        ref
            .read(settingControllerProvider.notifier)
            .createNotificationSchedule(
              uniqueId,
              _titleController.text,
              _messageController.text,
              dayOfWeek,
              _selectedTime.hour,
              _selectedTime.minute,
            );
      }
    }

    // Show success message
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          context.localizations('setting.notificationsScheduledSuccessfully'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('setting.scheduleNotification')),
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
                onPressed: () {
                  context.push(
                    '/setting/schedule-notification/notification-schedule',
                  );
                },
                leadingIcon: const Icon(Icons.list_outlined),
                child: Text(
                  context.localizations('setting.notificationScheduled'),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _saveSchedule,
        label: Text(context.localizations('setting.save')),
        icon: const Icon(Icons.alarm),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Time selection card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  onTap: () => _selectTime(context),
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                      horizontal: 16.0,
                    ),
                    child: Center(
                      child: Text(
                        _selectedTime.format(context),
                        style: Theme.of(context).textTheme.displayMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Days of week selection
              Text(
                context.localizations('setting.repeatOn'),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(7, (index) {
                  return _buildDaySelector(index);
                }),
              ),

              const SizedBox(height: 24),

              // Notification details
              Text(
                context.localizations('setting.notificationDetails'),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: context.localizations('setting.notificationTitle'),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  labelText: context.localizations(
                    'setting.notificationMessage',
                  ),
                  border: const OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Day selector widget
  Widget _buildDaySelector(int dayIndex) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedDays[dayIndex] = !_selectedDays[dayIndex];
        });
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedDays[dayIndex]
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
        child: Center(
          child: Text(
            _daysOfWeek[dayIndex],
            style: TextStyle(
              color: _selectedDays[dayIndex]
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
