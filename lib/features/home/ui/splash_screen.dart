import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/di/di.dart';
import 'package:taggira/core/utils/server/server_result.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';
import 'package:taggira/features/user/repo/user_repo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _userRepo = getIt<UserRepo>();

  @override
  void initState() {
    super.initState();
    _handleStartup();
  }

  Future<void> _handleStartup() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;

    if (firebaseUser != null) {
      try {
        final res = await _userRepo.getUser(firebaseUser.uid);
        switch (res) {
          case ServerSuccess(:final data):
            context.read<UserCubit>().updateUser(data);
            context.goNamed(Routes.carHomeScreen);

            break;
          case ServerError(:final message):
            context.goNamed(Routes.loginScreen);
            break;
        }
      } catch (e) {
        context.goNamed(Routes.loginScreen);
      }
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.goNamed(Routes.loginScreen);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
