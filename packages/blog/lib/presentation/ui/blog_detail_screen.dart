part of blog;

class BlogDetailScreen extends ConsumerStatefulWidget {
  final int blogId;

  const BlogDetailScreen({super.key, required this.blogId});

  @override
  ConsumerState<BlogDetailScreen> createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends ConsumerState<BlogDetailScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch blog details when screen initializes
    Future.microtask(
      () =>
          ref.read(blogControllerProvider.notifier).getBlogById(widget.blogId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations('blog.blogDetailTitle')),
        centerTitle: true,
      ),
      body: const BlogDetail(),
    );
  }
}
