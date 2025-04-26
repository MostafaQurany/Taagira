import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taggira/app/taggira.dart';
import 'package:taggira/core/di/di.dart';
import 'package:taggira/core/utils/helper/oberver_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //? firebase setups
  await Firebase.initializeApp();

  //? di setups
  setupDI();
  //? bloc
  Bloc.observer = MyBlocObserver();
  //? app
  runApp(const Taagira());
}

