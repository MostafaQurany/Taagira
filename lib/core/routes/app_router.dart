import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/di/di.dart'; // Assuming you use get_it (`sl`)
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/features/auth/ui/register_screen.dart';
import 'package:taggira/features/car/cubit/add_car_cubit/add_car_cubit.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/add_car_screen.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/ui/screens/login/login_screen.dart';
import 'package:taggira/features/auth/ui/screens/otp/otp_screen.dart';
import 'package:taggira/features/auth/ui/screens/sign%20up/sign_up_screen.dart';
import 'package:taggira/features/car/ui/car_card_details_screen.dart';
import 'package:taggira/features/car/ui/car_home_screen.dart';
import 'package:taggira/features/car/ui/car_pick_data_rent_screen.dart';
import 'package:taggira/features/home/ui/home_layout.dart';

class AppRouter {
  // 1. Define a root navigator key
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  // Function to build a page with a custom fade transition
  static Page<dynamic> buildPageWithFadeTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
      transitionDuration: const Duration(milliseconds: 300), // Optional: customize duration
    );
  }

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey, // 2. Assign it to GoRouter
    initialLocation: "/${Routes.carHomeScreen}",
    debugLogDiagnostics: true,
    routes: [
      // RegisterScreen (no AuthCubit)
      GoRoute(path: '/', builder: (context, state) => const RegisterScreen()),

      // SignUpScreen (with AuthCubit)
      GoRoute(
        path: '/${Routes.signUpScreen}',
        name: Routes.signUpScreen,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) =>
                      getIt<AuthCubit>(), // Using get_it dependency injection
              child: const SignUpScreen(),
            ),
      ),

      // OTPScreen (with AuthCubit)
      GoRoute(
        path: '/${Routes.otpScreen}',
        name: Routes.otpScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const OtpScreen(),
            ),
      ),

      // LoginScreen (with AuthCubit)
      GoRoute(
        path: '/${Routes.loginScreen}',
        name: Routes.loginScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const LoginScreen(),
            ),
      ),

      // Home Screen
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // Return the HomeLayout widget and pass the navigationShell
          return HomeLayout(navigationShell: navigationShell);
        },
        branches: [
          // Branch 1: Home
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/${Routes.carHomeScreen}",
                name: Routes.carHomeScreen,
                builder:
                    (context, state) => BlocProvider(
                      create: (context) => getIt<CarCubit>(),
                      child: const CarHomeScreen(),
                    ),
              ),
            ],
          ),
          // Branch 2: Favorites
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorites',
                builder:
                    (context, state) =>
                        const FavoritesScreen(), // Your actual favorites screen
              ),
            ],
          ),
          // Branch 3: Chat
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                builder:
                    (context, state) =>
                        const ChatScreen(), // Your actual chat screen
              ),
            ],
          ),
          // Branch 4: Recent
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/recent',
                builder:
                    (context, state) =>
                        const RecentCarsScreen(), // Your actual recent cars screen
              ),
            ],
          ),
          // Branch 5: Profile
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder:
                    (context, state) =>
                        const ProfileScreen(), // Your actual profile screen
              ),
            ],
          ),
        ],
      ),

      // 3. Move CarCardDetailsScreen, CarPickDataRentScreen, and AddCarScreen to be top-level routes
      GoRoute(
        path:
            "/${Routes.carCardDetailsScreen}", // 4. Absolute path for top-level
        name: Routes.carCardDetailsScreen,
        parentNavigatorKey: _rootNavigatorKey, // 5. Use root navigator
        // Using pageBuilder to apply custom transition
        pageBuilder: (context, state) {
          final carModel = state.extra as CarModel;
          return buildPageWithFadeTransition(
            context: context,
            state: state,
            child: CarCardDetailsScreen(carModel: carModel),
          );
        },
        routes: [
          GoRoute(
            path:
                Routes.carPickDataRentScreen, // 5. Relative path for sub-route
            name: Routes.carPickDataRentScreen,
            // parentNavigatorKey is inherited, but can be explicit:
            // parentNavigatorKey: _rootNavigatorKey,
            // Applying fade transition to sub-route as well
            pageBuilder: (context, state) {
              final carModel = state.extra as CarModel;
              return buildPageWithFadeTransition(
                context: context,
                state: state,
                child: CarPickDataRentScreen(carModel: carModel),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: "/${Routes.addCarScreen}", // 4. Absolute path for top-level
        name: Routes.addCarScreen,
        parentNavigatorKey: _rootNavigatorKey, // 5. Use root navigator
        // Applying fade transition
        pageBuilder: (context, state) {
          return buildPageWithFadeTransition(
            context: context,
            state: state,
            child: BlocProvider(
              create: (context) => getIt<AddCarCubit>(),
              child: const AddCarScreen(),
            ),
          );
        },
      ),
    ],
  );
}

// --- Placeholder Screens (replace with your actual screens) ---

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Favorites Screen'));
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Chat Screen'));
}

class RecentCarsScreen extends StatelessWidget {
  const RecentCarsScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Recent Cars Screen'));
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Profile Screen'));
}
