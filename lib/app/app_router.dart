import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/route_names.dart';
import 'package:life_flow/core/core.dart';
import 'package:life_flow/view/home/home_screen.dart';
import 'package:life_flow/view/home/navigation_bar_screen.dart';
import 'package:life_flow/view/login/login_screen.dart';
import 'package:life_flow/view/profile/profile_screen.dart';
import 'package:life_flow/view/registeration/registration_screen.dart';
import 'package:life_flow/view/registeration/user_details_screen.dart';
import 'package:life_flow/view/registeration/verify_otp_screen.dart';
import 'package:life_flow/view/settings/settings_screen.dart';
import 'package:life_flow/view/welcome/welcome_screen.dart';

class AppRouter {
  // static final _rootNavigatorKey =
  //     GlobalKey<NavigatorState>(debugLabel: "root");
  // static final _homeNavigatorKey =
  //     GlobalKey<NavigatorState>(debugLabel: "home");
  // static final _profileNavigatorKey =
  //     GlobalKey<NavigatorState>(debugLabel: "profile");
  // static final _settingsNavigatorKey =
  //     GlobalKey<NavigatorState>(debugLabel: "settings");
  GoRouter router = GoRouter(
    // navigatorKey: _rootNavigatorKey,
    initialLocation: "/home",
    redirect: (context, state) {
      if (context.read<AuthenticationCubit>().state is! Authenticated &&
          (!(state.fullPath?.contains("welcome") ?? false))) {
        return "/welcome";
      }
      return null;
    },
    routes: [
      //Welcome
      GoRoute(
        path: "/welcome",
        name: RouteNames.welcome,
        builder: (context, state) => const WelcomeScreen(),
        routes: [
          //Login
          GoRoute(
            path: "login",
            name: RouteNames.login,
            builder: (context, state) => const LoginScreen(),
          ),
          //Login
          GoRoute(
            path: "register",
            name: RouteNames.register,
            builder: (context, state) => const RegistrationScreen(),
            routes: [
              GoRoute(
                path: "verify-otp",
                name: RouteNames.verifyOtp,
                builder: (context, state) => const VerifyOtpScreen(),
              ),
              GoRoute(
                path: "user-details",
                name: RouteNames.userDetails,
                builder: (context, state) => const UserDetailsScreen(),
              ),
            ],
          ),
        ],
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            ScaffoldWithNestedNavigation(
          navigationShell: navigationShell,
        ),
        branches: [
          //Home
          StatefulShellBranch(
            // navigatorKey: _homeNavigatorKey,
            routes: [
              GoRoute(
                path: "/home",
                name: RouteNames.home,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomeScreen(),
                ),
              ),
            ],
          ),
          //Profile
          StatefulShellBranch(
            // navigatorKey: _profileNavigatorKey,
            routes: [
              GoRoute(
                path: "/profile",
                name: RouteNames.profile,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: ProfileScreen(),
                ),
              ),
            ],
          ),
          //Settings
          StatefulShellBranch(
            // navigatorKey: _settingsNavigatorKey,
            routes: [
              GoRoute(
                path: "/settings",
                name: RouteNames.settings,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: SettingsScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
