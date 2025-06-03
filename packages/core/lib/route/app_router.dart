import 'package:attendance/attendance.dart';
import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:core/route/route.dart';
import 'package:dashboard/dashboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:notification/domain/model/notification.dart' as model;
import 'package:notification/notification.dart';
//import 'package:home/home.dart';
import 'package:profile/profile.dart';
import 'package:public_holiday/public_holiday.dart';
import 'package:setting/setting.dart';
import 'package:blog/blog.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final notifier = ref.read(goRouterNotifierProvider);
  // final observer = ref.read(routeObserverProvider);
  final navigatorObserver = ref.watch(appNavigatorObserverObserverProvider);
  // final logger = ref.read(loggerProvider('GoRouter'));
  final secureStorage = ref.watch(secureStorageProvider);

  final appRoute = AppRouter(
    secureStorage: secureStorage,
    notifier: notifier,
    navigatorObserver: navigatorObserver,
  );

  return appRoute.router;
});

class AppRouter {
  ISecureStorage secureStorage;
  GoRouterNotifier notifier;
  NavigatorObserver navigatorObserver;

  final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey(
    debugLabel: 'root',
  );
  bool isDuplicate = false;

  AppRouter({
    required this.secureStorage,
    required this.notifier,
    required this.navigatorObserver,
  });

  GoRouter get router {
    return GoRouter(
      restorationScopeId: 'router',
      navigatorKey: rootNavigatorKey,
      observers: [navigatorObserver],
      refreshListenable: notifier,
      initialLocation: '/',
      redirect: _redirect,
      routes: _buildRoutes(),
      errorBuilder: _errorBuilder,
    );
  }

  //1. Redirect logic
  Future<String?> _redirect(BuildContext context, GoRouterState state) async {
    final accessToken = await secureStorage.read(accessTokenKey);
    final isLoggedIn = accessToken != null;

    // Handle redirects based on login status
    if (isLoggedIn) {
      return _handleLoggedInRedirect(state);
    } else {
      return _handleLoggedOutRedirect(state);
    }
  }

  String? _handleLoggedInRedirect(GoRouterState state) {
    if (state.matchedLocation == '/login') {
      return '/';
    }
    return null;
  }

  String? _handleLoggedOutRedirect(GoRouterState state) {
    if (state.matchedLocation != '/login') {
      return '/login?from=${state.matchedLocation}';
    }
    return null;
  }

  // 2. Routes Configuration
  List<RouteBase> _buildRoutes() {
    return [
      _loginRoute(),
      _signupRoute(),
      _dashboardRoute(),
      _mapRoute(),
      _publicHolidayRoute(),
    ];
  }

  RouteBase _loginRoute() {
    return GoRoute(
      path: '/$loginRoute',
      name: loginRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const LoginScreen(),
      ),
      routes: [_forgotPasswordRoute()],
    );
  }

  RouteBase _signupRoute() {
    return GoRoute(
      path: '/$signupRoute',
      name: signupRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const SignUpScreen(),
      ),
    );
  }

  RouteBase _forgotPasswordRoute() {
    return GoRoute(
      path: '/$forgotPasswordRoute',
      name: forgotPasswordRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ForgotPasswordScreen(),
      ),
    );
  }

  // 3. Dashboard and other main routes (simplified)
  StatefulShellRoute _dashboardRoute() {
    return StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return DashboardScreen(navigationShell: navigationShell);
      },
      branches: [
        _homeBranch(),
        _attendanceBranch(),
        _notificationBranch(),
        _settingBranch(),
      ],
    );
  }

  RouteBase _mapRoute() {
    return GoRoute(
      path: '/$mapRoute',
      name: mapRoute,
      builder: (context, state) => const MapScreen(),
      routes: [_cameraRoute()],
    );
  }

  RouteBase _cameraRoute() {
    return GoRoute(
      path: '/$cameraRoute',
      name: cameraRoute,
      builder: (context, state) {
        final extras = state.extra as Map<String, dynamic>;
        return CaptureImageScreen(extras: extras);
      },
    );
  }

  StatefulShellBranch _homeBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/',
          name: homeRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const BlogScreen(),
          ),
          routes: [_blogDetailRoute()],
        ),
      ],
    );
  }

  // StatefulShellBranch _blogBranch() {
  //   return StatefulShellBranch(
  //     routes: [
  //       GoRoute(
  //         path: '/$blogRoute',
  //         name: blogRoute,
  //         pageBuilder:
  //             (context, state) => NoTransitionPage(
  //               key: state.pageKey,
  //               name: state.name,
  //               child: const BlogScreen(),
  //             ),
  //         routes: [_blogDetailRoute()],
  //       ),
  //     ],
  //   );
  // }

  RouteBase _blogDetailRoute() {
    return GoRoute(
      path: '/$blogDetailRoute/:blogId',
      name: blogDetailRoute,
      pageBuilder: (context, state) {
        final blogId = state.pathParameters['blogId'] ?? '';
        return NoTransitionPage(
          key: state.pageKey,
          name: state.name,
          child: BlogDetailScreen(blogId: int.parse(blogId)),
        );
      },
    );
  }

  StatefulShellBranch _notificationBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/$notificationRoute',
          name: notificationRoute,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              name: state.name,
              child: const NotificationScreen(),
            );
          },
          routes: [_notificationDetailRoute()],
        ),
      ],
    );
  }

  StatefulShellBranch _attendanceBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/$attendanceRoute',
          name: attendanceRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const AttendanceScreen(),
          ),
        ),
      ],
    );
  }

  StatefulShellBranch _settingBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/$settingRoute',
          name: settingRoute,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            name: state.name,
            child: const SettingScreen(),
          ),
          routes: [
            _themeRoute(),
            _languageRoute(),
            _profileRoute(),
            _deviceSettingRoute(),
            _privacyPolicyRoute(),
            _scheduleNotificationRoute(),
          ],
        ),
      ],
    );
  }

  RouteBase _themeRoute() {
    return GoRoute(
      path: '/$themeRoute',
      name: themeRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ThemePickerScreen(),
      ),
    );
  }

  RouteBase _languageRoute() {
    return GoRoute(
      path: '/$languageRoute',
      name: languageRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const LanguagePickerScreen(),
      ),
    );
  }

  RouteBase _profileRoute() {
    return GoRoute(
      path: '/$profileRoute',
      name: profileRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ProfileScreen(),
      ),
    );
  }

  RouteBase _deviceSettingRoute() {
    return GoRoute(
      path: '/$companySettingRoute',
      name: companySettingRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const CompanySettingScreen(),
      ),
    );
  }

  RouteBase _privacyPolicyRoute() {
    return GoRoute(
      path: '/$privacyPolicyRoute',
      name: privacyPolicyRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const PrivacyPolicyScreen(),
      ),
    );
  }

  RouteBase _scheduleNotificationRoute() {
    return GoRoute(
      path: '/$scheduleNotificationRoute',
      name: scheduleNotificationRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const ScheduleNotificationScreen(),
      ),
      routes: [_notificationScheduleRoute()],
    );
  }

  RouteBase _notificationScheduleRoute() {
    return GoRoute(
      path: '/$notificationScheduleRoute',
      name: notificationScheduleRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const NotificationScheduleScreen(),
      ),
    );
  }

  RouteBase _notificationDetailRoute() {
    return GoRoute(
      path: '/$notificationDetailRoute',
      name: notificationDetailRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: NotificationDetailScreen(
          notification: state.extra as model.Notification,
        ),
      ),
    );
  }

  RouteBase _publicHolidayRoute() {
    return GoRoute(
      path: '/$publicHolidayRoute',
      name: publicHolidayRoute,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        name: state.name,
        child: const PublicHolidayScreen(),
      ),
    );
  }

  // 4. Error Handling
  Widget _errorBuilder(BuildContext context, GoRouterState state) {
    return const NoRouteScreen();
  }
}
