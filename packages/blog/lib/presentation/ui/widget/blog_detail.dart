part of blog;

class BlogDetail extends ConsumerWidget {
  const BlogDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blog = ref.watch(
      blogControllerProvider.select((state) => state.blog),
    );

    if (blog == null) {
      return const SizedBox.shrink();
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (blog.image != null)
            Hero(
              tag: 'blog-image-${blog.id}',
              child: Image.network(
                blog.image!,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 50,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  );
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'Created: ${blog.createdAt}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.update, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'Updated: ${blog.updatedAt}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(),
                const SizedBox(height: 16),
                Html(
                  data: blog.content,
                  style: {
                    "body": Style(
                      margin: Margins.zero,
                      padding: HtmlPaddings.zero,
                      fontSize: FontSize(
                        Theme.of(context).textTheme.bodyLarge?.fontSize ?? 16,
                      ),
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      lineHeight: LineHeight.normal,
                    ),
                    "p": Style(margin: Margins.only(bottom: 16)),
                    "h1,h2,h3,h4,h5,h6": Style(
                      margin: Margins.only(bottom: 8, top: 16),
                    ),
                    "img": Style(margin: Margins.only(bottom: 8, top: 8)),
                    "ul,ol": Style(margin: Margins.only(left: 20)),
                  },
                  onLinkTap: (url, _, __) {
                    if (url != null) {
                      // Handle link taps if needed
                      // You could use url_launcher package here
                    }
                  },
                ),
                const SizedBox(height: 32),
                Center(
                  child: FilledButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Back to List'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
