part of public_holiday;

class PublicHolidayList extends ConsumerStatefulWidget {
  const PublicHolidayList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PublicHolidayListState();
}

class _PublicHolidayListState extends ConsumerState<PublicHolidayList> {
  @override
  void initState() {
    super.initState();
    // Fetch public holidays when widget initializes
    Future.microtask(
      () =>
          ref.read(publicHolidayControllerProvider.notifier).getPublicHoliday(),
    );
  }

  // Map to convert month names to their numerical order
  final Map<String, int> _monthOrder = {
    'January': 1,
    'February': 2,
    'March': 3,
    'April': 4,
    'May': 5,
    'June': 6,
    'July': 7,
    'August': 8,
    'September': 9,
    'October': 10,
    'November': 11,
    'December': 12,
  };

  @override
  Widget build(BuildContext context) {
    final holidays = ref.watch(
      publicHolidayControllerProvider.select((value) => value.publicHolidays),
    );

    if (holidays.isEmpty) {
      return const EmptyDataWidget();
    }

    // Group holidays by month to determine if all holidays in a month are past
    final Map<String, bool> pastMonths = {};
    for (final holiday in holidays) {
      final month = holiday.month;
      // Initialize if not already set
      pastMonths[month] ??= true;
      // If any holiday in this month is not past, mark the month as not past
      if (!holiday.isPast) {
        pastMonths[month] = false;
      }
    }

    return Scaffold(
      body: GroupedListView<dynamic, String>(
        elements: holidays,
        groupBy: (holiday) => holiday.month,
        groupSeparatorBuilder: (String month) =>
            _buildMonthHeader(month, isPastMonth: pastMonths[month] ?? false),
        itemBuilder: (context, holiday) => _buildHolidayItem(holiday),
        order: GroupedListOrder.ASC,
        groupComparator: (String a, String b) {
          // Compare months based on their numerical order
          return _monthOrder[a]!.compareTo(_monthOrder[b]!);
        },
        useStickyGroupSeparators: false,
        floatingHeader: true,
        padding: const EdgeInsets.symmetric(
          horizontal: kSmall,
          vertical: kMedium,
        ),
      ),
    );
  }

  Widget _buildMonthHeader(String month, {required bool isPastMonth}) {
    // Check if this is the current month
    final DateTime now = DateTime.now();
    final bool isCurrentMonth = _monthOrder[month] == now.month;

    // Choose colors based on whether it's current month, past month, or future month
    final Color backgroundColor;
    final Color textColor;

    if (isPastMonth) {
      // Past month styling
      backgroundColor = Theme.of(context).colorScheme.surfaceContainer;
      textColor = Theme.of(context).colorScheme.onSurfaceVariant;
    } else if (isCurrentMonth) {
      // Current month styling - make it more prominent
      backgroundColor = Theme.of(context).colorScheme.primaryContainer;
      textColor = Theme.of(context).colorScheme.onPrimaryContainer;
    } else {
      // Future month styling
      backgroundColor = Theme.of(
        context,
      ).colorScheme.primaryContainer.withAlpha((0.2 * 255).round());
      textColor = Theme.of(context).colorScheme.primary;
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: kMedium, bottom: kSmall),
      padding: const EdgeInsets.symmetric(
        horizontal: kMedium,
        vertical: kMedium,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(kMedium),
        ),
      ),
      child: Text(
        month,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildHolidayItem(PublicHoliday holiday) {
    // Set background and border colors based on whether the holiday is past and in current month
    final Color backgroundColor;
    final Color borderColor;

    if (holiday.isPast) {
      // Past holiday - use disabled colors
      backgroundColor = Theme.of(
        context,
      ).colorScheme.onSurface.withValues(alpha: 0.2);
      borderColor = Colors.transparent;
    } else if (holiday.isInCurrentMonth) {
      // Current month, upcoming holiday - use highlighted colors
      backgroundColor = Theme.of(context).colorScheme.surface;
      borderColor = Theme.of(
        context,
      ).colorScheme.primary.withValues(alpha: 0.9);
    } else {
      // Future holiday not in current month - use neutral colors
      backgroundColor = Theme.of(context).colorScheme.surface;
      borderColor = Theme.of(context).colorScheme.outlineVariant;
    }

    // Apply Material 3 card styling
    return Card(
      margin: const EdgeInsets.symmetric(vertical: kXSmall, horizontal: kSmall),
      elevation: (!holiday.isPast && holiday.isInCurrentMonth) ? 1 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kMedium),
        side: BorderSide(color: borderColor, width: 1),
      ),
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kXSmall),
        child: ListTile(
          enabled: !holiday.isPast,
          title: Row(
            children: [
              Expanded(
                child: Text(
                  holiday.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: holiday.isInCurrentMonth
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: holiday.isPast
                        ? Theme.of(context).colorScheme.onSurfaceVariant
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              if (holiday.isRecurring)
                Container(
                  height: 24,
                  margin: const EdgeInsets.only(left: kXSmall),
                  padding: const EdgeInsets.symmetric(
                    horizontal: kSmall,
                    vertical: kXSmall,
                  ),
                  decoration: BoxDecoration(
                    color: holiday.isPast
                        ? Theme.of(context).colorScheme.secondaryContainer
                              .withValues(alpha: 0.5)
                        : Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(kMedium),
                    border: Border.all(
                      color: holiday.isPast
                          ? Theme.of(
                              context,
                            ).colorScheme.secondary.withValues(alpha: 0.3)
                          : Theme.of(
                              context,
                            ).colorScheme.secondary.withValues(alpha: 0.5),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    context.localizations('publicHoliday.recurring'),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 10,
                      color: holiday.isPast
                          ? Theme.of(context).colorScheme.onSecondaryContainer
                                .withValues(alpha: 0.7)
                          : Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (holiday.description != null &&
                  holiday.description!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: kXSmall),
                  child: Text(
                    holiday.description!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: holiday.isPast
                          ? Theme.of(context).colorScheme.onSurfaceVariant
                                .withValues(alpha: 0.7)
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: kXSmall),
                child: Text(
                  '${holiday.day}, ${holiday.date}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: holiday.isPast
                        ? Theme.of(
                            context,
                          ).colorScheme.onSurfaceVariant.withValues(alpha: 0.7)
                        : Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),

              if (holiday.states.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: kSmall),
                  child: Wrap(
                    spacing: kXSmall,
                    runSpacing: kXSmall,
                    children: holiday.states
                        .map(
                          (state) => Container(
                            height: 24,
                            padding: const EdgeInsets.symmetric(
                              horizontal: kSmall,
                              vertical: kXSmall,
                            ),
                            decoration: BoxDecoration(
                              color: holiday.isPast
                                  ? Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                        .withValues(alpha: 0.2)
                                  : Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                        .withValues(alpha: 0.7),
                              borderRadius: BorderRadius.circular(kMedium),
                              border: Border.all(
                                color: holiday.isPast
                                    ? Theme.of(context).colorScheme.primary
                                          .withValues(alpha: 0.3)
                                    : Theme.of(context).colorScheme.primary
                                          .withValues(alpha: 0.5),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              state,
                              style: Theme.of(context).textTheme.labelSmall
                                  ?.copyWith(
                                    fontSize: 10,
                                    color: holiday.isPast
                                        ? Theme.of(context)
                                              .colorScheme
                                              .onTertiaryContainer
                                              .withValues(alpha: 0.7)
                                        : Theme.of(
                                            context,
                                          ).colorScheme.onTertiaryContainer,
                                  ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
            ],
          ),
          isThreeLine:
              holiday.description != null && holiday.description!.isNotEmpty,
        ),
      ),
    );
  }
}
