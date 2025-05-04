import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/di/di.dart'; // Assuming you use get_it (`sl`)
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/features/car/cubit/add_car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/add_car_screen.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/ui/register_screen.dart';
import 'package:taggira/features/auth/ui/screens/login/login_screen.dart';
import 'package:taggira/features/auth/ui/screens/otp/otp_screen.dart';
import 'package:taggira/features/auth/ui/screens/sign%20up/sign_up_screen.dart';
import 'package:taggira/features/car/ui/car_card_details_screen.dart';
import 'package:taggira/features/car/ui/car_home_screen.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<AddCarCubit>(),
              child: CarHomeScreen(),
            ),
        routes: [
          GoRoute(
            path: "/${Routes.carCardDetailsScreen}",
            name: Routes.carCardDetailsScreen,
            builder: (context, state) {
              final carModel = state.extra as CarModel;
              return CarCardDetailsScreen(carModel: carModel);
            },
          ),
        ],
      ),
      // RegisterScreen (no AuthCubit)
      //GoRoute(path: '/', builder: (context, state) => RegisterScreen()),

      // SignUpScreen (with AuthCubit)
      GoRoute(
        path: '/${Routes.signUpScreen}',
        name: Routes.signUpScreen,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) =>
                      getIt<AuthCubit>(), // Using get_it dependency injection
              child: SignUpScreen(),
            ),
      ),

      // OTPScreen (with AuthCubit)
      GoRoute(
        path: '/${Routes.otpScreen}',
        name: Routes.otpScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: OtpScreen(),
            ),
      ),

      // LoginScreen (with AuthCubit)
      GoRoute(
        path: '/${Routes.loginScreen}',
        name: Routes.loginScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: LoginScreen(),
            ),
      ),
    ],
  );
}
