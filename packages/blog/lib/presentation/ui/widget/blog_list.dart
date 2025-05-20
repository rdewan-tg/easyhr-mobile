part of blog;

class BlogList extends ConsumerStatefulWidget {
  const BlogList({super.key});

  @override
  ConsumerState<BlogList> createState() => _BlogListState();
}

class _BlogListState extends ConsumerState<BlogList> {
  @override
  Widget build(BuildContext context) {
    final blogs = ref.watch(
      blogControllerProvider.select((state) => state.blogs),
    );

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(blogControllerProvider.notifier).getBlogs();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          final blog = blogs[index];
          return _buildBlogCard(blog);
        },
      ),
    );
  }

  Widget _buildBlogCard(BlogModel blog) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: () {
          context.push('/blog-detail/${blog.id}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (blog.image != null)
              Image.network(
                blog.image!,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 120,
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  );
                },
              ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 80,
                    child: ClipRect(
                      child: Html(
                        data: blog.content,
                        style: {
                          "body": Style(
                            margin: Margins.zero,
                            padding: HtmlPaddings.zero,
                            fontSize: FontSize(
                              Theme.of(
                                    context,
                                  ).textTheme.bodyMedium?.fontSize ??
                                  14,
                            ),
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                            maxLines: 3,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Updated: ${blog.updatedAt}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      FilledButton(
                        onPressed: () {
                          context.push('/blog-detail/${blog.id}');
                        },
                        child: const Text('Read More'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
