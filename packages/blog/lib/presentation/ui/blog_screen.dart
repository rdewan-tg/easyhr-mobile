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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _setFirebaseDeviceToken();
    });
    // Fetch blogs when screen initializes
    Future.microtask(() {
      ref.read(blogControllerProvider.notifier).getBlogs();
      // init firebase push notification - in home screen
      ref.read(firebasePushNotificationProvider);
    });
  }

  // set firebase device token
  void _setFirebaseDeviceToken() async {
    final result =
        await ref.read(firebasePushNotificationProvider).getIsPermissionGranted();
    if (result) {
      final token =
          await ref.read(firebasePushNotificationProvider).getFirebaseToken();
      if (token != null) {
        ref.read(blogControllerProvider.notifier).setFirebaseDeviceToken(token);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('home.title')),
        centerTitle: true,
      ),
      body: const BlogList(),
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
