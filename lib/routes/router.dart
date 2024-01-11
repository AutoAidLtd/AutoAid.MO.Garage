import 'package:autoaid_garage/pages/home_page/home_page.dart';
import 'package:autoaid_garage/pages/login_page/login_page.dart';
import 'package:autoaid_garage/pages/user_page/user_page.dart';
import 'package:autoaid_garage/routes/router_key_management.dart';
import 'package:autoaid_garage/utils/widgets/base_scaffold.dart';
import 'package:go_router/go_router.dart';

class AppPath {
  static const String firstScreen = '/first';

  static const String login = '/login';
  static const String home = '/home';
  static const String user = '/user';
}

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppPath.login,
    navigatorKey: RouterKeyManager.instance.rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
          path: AppPath.login,
          builder: (
            context,
            state,
          ) =>
              const LoginPageGarage()),
      ShellRoute(
        navigatorKey: RouterKeyManager.instance.shellNavigatorKey,
        builder: (context, state, child) {
          return BaseScaffold(child: child);
        },
        routes: [
          GoRoute(
            path: AppPath.home,
            builder: (
              context,
              state,
            ) =>
                const HomePage(),
          ),
          GoRoute(
            path: AppPath.user,
            builder: (
              context,
              state,
            ) =>
                const UserPage(),
          ),
        ],
      ),
    ],
    debugLogDiagnostics: true,
  );
}
