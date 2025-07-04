part of '../../../dashboard.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  const BottomNavigationWidget({super.key, required this.navigationShell});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 80,
      selectedIndex: widget.navigationShell.currentIndex,
      onDestinationSelected: (value) => _onItemTapped(value),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      destinations: [
        NavigationDestination(
          selectedIcon: const Icon(Icons.home_rounded),
          icon: const Icon(Icons.home_outlined),
          label: context.localizations('home.title'),
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.punch_clock_rounded),
          icon: const Icon(Icons.punch_clock_outlined),
          label: context.localizations('attendance.title'),
        ),
        NavigationDestination(
          selectedIcon: const CartBadgeWidget(
            child: Icon(Icons.notifications_rounded),
          ),
          icon: const CartBadgeWidget(
            child: Icon(Icons.notifications_outlined),
          ),
          label: context.localizations('notification.title'),
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.settings_rounded),
          icon: const Icon(Icons.settings_outlined),
          label: context.localizations('setting.title'),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
