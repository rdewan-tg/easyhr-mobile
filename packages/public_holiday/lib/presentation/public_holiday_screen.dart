part of public_holiday;

class PublicHolidayScreen extends ConsumerStatefulWidget {
  const PublicHolidayScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PublicHolidayScreenState();
}

class _PublicHolidayScreenState extends ConsumerState<PublicHolidayScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(publicHolidayServiceProvider).getPublicHoliday();
    });
  }

  @override
  Widget build(BuildContext context) {
    _listner();

    return Scaffold(
      appBar: AppBar(title: const Text('Public Holidays'), centerTitle: true),
      body: const PublicHolidayList(),
    );
  }

  void _listner() {
    // listen for error
    ref.listen(publicHolidayControllerProvider.select((value) => value.error), (
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

    ref.listen(
      publicHolidayControllerProvider.select((value) => value.isLoading),
      (_, next) {
        if (next) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      },
    );
  }
}
