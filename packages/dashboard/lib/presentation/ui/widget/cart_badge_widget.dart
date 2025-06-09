part of '../../../dashboard.dart';

class CartBadgeWidget extends ConsumerWidget {
  final Widget? child;
  const CartBadgeWidget({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final badgeCount = ref.watch(
      notificationControllerProvider.select(
        (value) => value.newNotificationCount,
      ),
    );

    return Badge(
      largeSize: Platform.isIOS ? 20 : null,
      isLabelVisible: badgeCount > 0 ? true : false,
      label: badgeCount < 1 ? const SizedBox.shrink() : Text('$badgeCount'),
      child: child,
    );
  }
}
