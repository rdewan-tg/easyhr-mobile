part of 'package:attendance/attendance.dart';

class AttendanceList extends ConsumerStatefulWidget {
  const AttendanceList({super.key});

  @override
  ConsumerState<AttendanceList> createState() => _AttendanceListState();
}

class _AttendanceListState extends ConsumerState<AttendanceList> {
  @override
  Widget build(BuildContext context) {
    final attendanceList = ref.watch(
      attendanceControllerProvider.select((value) => value.attendanceList),
    );
    return RefreshIndicator.adaptive(
      onRefresh: _pullToRefresh,
      child: ListView.builder(
        padding: const EdgeInsets.all(kMedium),
        itemCount: attendanceList.length,
        itemBuilder: (context, index) {
          final data = attendanceList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: kMedium),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kMedium),
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
                              color:
                                  data.status == "IN"
                                      ? context.themeColor.colorScheme.tertiary
                                          .withValues(alpha: 0.1)
                                      : context.themeColor.colorScheme.error
                                          .withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              data.status,
                              style: context.textTheme.labelSmall?.copyWith(
                                color:
                                    data.status == "IN"
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
                              label: 'Location'.hardcoded,
                              value: data.address,
                              color: context.themeColor.colorScheme.primary,
                              onTap:
                                  () => _launchGoogleMaps(
                                    data.latitude,
                                    data.longitude,
                                  ),
                            ),
                          ),
                          const SizedBox(width: kMedium),
                          Expanded(
                            child: _AttendanceInfoTile(
                              icon: Icons.map_rounded,
                              label: 'Zone'.hardcoded,
                              value: data.zone,
                              color: context.themeColor.colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _pullToRefresh() async {
    ref.read(attendanceControllerProvider.notifier).getAttendanceStatus();
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
        decoration: BoxDecoration(
          color: Color.fromARGB(
            25, // 0.1 * 255
            color.r.round(),
            color.g.round(),
            color.b.round(),
          ),
          borderRadius: BorderRadius.circular(kMedium),
        ),
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
                    color: Color.fromARGB(
                      178, // 0.7 * 255
                      context.themeColor.colorScheme.onSurface.r.round(),
                      context.themeColor.colorScheme.onSurface.g.round(),
                      context.themeColor.colorScheme.onSurface.b.round(),
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
