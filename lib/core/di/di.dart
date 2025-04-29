import 'package:get_it/get_it.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/data/auth_data_source.dart';
import 'package:taggira/features/auth/repo/auth_repo.dart';
import 'package:taggira/features/car/cubit/add_car_cubit.dart';
import 'package:taggira/features/car/data/car_data_source.dart';
import 'package:taggira/features/car/repo/car_repo.dart';

final getIt = GetIt.instance;

void setupDI() {
  _auth();
  _car();
}

_auth() {
  getIt
    // database
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl())
    // repo
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()))
    // cubit
    ..registerFactory<AuthCubit>(() => AuthCubit(getIt()));
}

_car() {
  getIt
    //  database
    ..registerLazySingleton<CarRepo>(() => CarDataSource())
    // cubit
    ..registerFactory<AddCarCubit>(() => AddCarCubit(getIt()));
}
