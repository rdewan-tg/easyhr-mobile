part of blog;

class BlogScreen extends ConsumerStatefulWidget {
  const BlogScreen({super.key});

  @override
  ConsumerState<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends ConsumerState<BlogScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch blogs when screen initializes
    Future.microtask(() {
      // set firebase device token
      _setFirebaseDeviceToken();
      // init firebase push notification - in home screen
      ref.read(firebasePushNotificationProvider);
    });
  }

  // set firebase device token
  void _setFirebaseDeviceToken() async {
    // check if permission is granted
    final result = await ref
        .read(firebasePushNotificationProvider)
        .getIsPermissionGranted();
    if (result) {
      // get firebase token
      final token = await ref
          .read(firebasePushNotificationProvider)
          .getFirebaseToken();
      if (token != null) {
        // subscribe to general topic
        ref.read(firebasePushNotificationProvider).subscribeToTopic('general');
        // set firebase device token - api call
        ref.read(blogControllerProvider.notifier).setFirebaseDeviceToken(token);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    return const MainAppScaffoldSliver(
      slivers: [SliverFillRemaining(child: BlogList())],
    );
  }

  void _listener() {
    // listen for error
    ref.listen(blogControllerProvider.select((value) => value.error), (
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

    ref.listen(blogControllerProvider.select((value) => value.isLoading), (
      _,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }
}
