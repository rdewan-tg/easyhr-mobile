part of 'package:attendance/attendance.dart';

class AttendanceList extends ConsumerStatefulWidget {
  const AttendanceList({super.key});

  @override
  ConsumerState<AttendanceList> createState() => _AttendanceListState();
}

class _AttendanceListState extends ConsumerState<AttendanceList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_pagination);
  }

  void _setScrollController() {
    final provider = ref.read(appScrollControllerProvider.notifier);
    provider.setScrollController(_scrollController);
  }

  Future<void> _pagination() async {
    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final currentScrollPosition = _scrollController.position.pixels;
    final currentPage = ref
        .read(attendanceControllerProvider.notifier)
        .getCurrentPage();
    final totalPages = ref
        .read(attendanceControllerProvider.notifier)
        .getTotalPages();
    if (currentPage < totalPages) {
      if (currentScrollPosition >= maxScrollExtent - 200) {
        await ref.read(attendanceControllerProvider.notifier).getAttendances();
        // animate to bottom
        await _scrollController.animateTo(
          _scrollController.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_pagination);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final attendanceList = ref.watch(
      attendanceControllerProvider.select((value) => value.attendanceList),
    );

    if (attendanceList.isEmpty) {
      return EmptyDataWidget(
        onRefresh: () {
          ref
              .read(attendanceControllerProvider.notifier)
              .getAttendances(refresh: true);
        },
      );
    }

    return VisibilityDetector(
      key: const Key("attendance_list"),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5) {
          _setScrollController();
        }
      },
      child: RefreshIndicator.adaptive(
        onRefresh: _pullToRefresh,
        child: Stack(
          children: [
            ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(kMedium),
              itemCount: attendanceList.length,
              itemBuilder: (context, index) {
                final data = attendanceList[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: kMedium),
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
                    borderRadius: BorderRadius.circular(kMedium),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(kMedium),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_rounded,
                                color: context.themeColor.colorScheme.primary,
                                size: kLarge,
                              ),
                              const SizedBox(width: kSmall),
                              Text(
                                data.date,
                                style: context.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: kSmall,
                                  vertical: kXSmall,
                                ),
                                decoration: BoxDecoration(
                                  color: data.status == "IN"
                                      ? context.themeColor.colorScheme.tertiary
                                            .withValues(alpha: 0.1)
                                      : context.themeColor.colorScheme.error
                                            .withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  data.status,
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: data.status == "IN"
                                        ? context
                                              .themeColor
                                              .colorScheme
                                              .tertiary
                                        : context.themeColor.colorScheme.error,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: kMedium),
                          Row(
                            children: [
                              Expanded(
                                child: _AttendanceInfoTile(
                                  icon: Icons.location_on_rounded,
                                  label: context.localizations(
                                    "attendance.location",
                                  ),
                                  value: data.address,
                                  color: context.themeColor.colorScheme.primary,
                                  onTap: () => _launchGoogleMaps(
                                    data.latitude,
                                    data.longitude,
                                  ),
                                ),
                              ),
                              const SizedBox(width: kMedium),
                              Expanded(
                                child: _AttendanceInfoTile(
                                  icon: Icons.map_rounded,
                                  label: context.localizations(
                                    "attendance.zone",
                                  ),
                                  value: data.zone,
                                  color:
                                      context.themeColor.colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            Consumer(
              builder: (context, ref, child) {
                final isPageLoading = ref.watch(
                  attendanceControllerProvider.select(
                    (value) => value.isPageLoading,
                  ),
                );
                return isPageLoading
                    ? const Positioned(
                        bottom: 60,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pullToRefresh() async {
    ref
        .read(attendanceControllerProvider.notifier)
        .getAttendances(refresh: true);
  }

  Future<void> _launchGoogleMaps(String latitude, String longitude) async {
    final uri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude&zoom=21',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalNonBrowserApplication,
        webOnlyWindowName: '_blank',
      );
    }
  }
}

class _AttendanceInfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;
  final VoidCallback? onTap;

  const _AttendanceInfoTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(kMedium),
      child: Container(
        padding: const EdgeInsets.all(kMedium),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(kMedium)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: kXLMedium, color: color),
                const SizedBox(width: kXSmall),
                Text(
                  label,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.themeColor.colorScheme.onSurface.withValues(
                      alpha: 0.7,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: kXSmall),
            Text(
              value,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
