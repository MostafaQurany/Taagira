import 'package:get_it/get_it.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/data/auth_data_source.dart';
import 'package:taggira/features/auth/repo/auth_repo.dart';
import 'package:taggira/features/car/cubit/add_car_cubit/add_car_cubit.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/data/car_data_source.dart';
import 'package:taggira/features/car/data/user_favorite_car_data_source.dart';
import 'package:taggira/features/car/repo/car_repo.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';
import 'package:taggira/features/user/data/user_data_scourse.dart';
import 'package:taggira/features/user/repo/user_repo.dart';

final getIt = GetIt.instance;

void setupDI() {
  _auth();
  _car();
  _user();
}

_auth() {
  getIt
    // database
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl())
    // repo
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()))
    // cubit
    ..registerLazySingleton<AuthCubit>(
      () => AuthCubit(getIt(), getIt(), getIt()),
    );
}

_car() {
  getIt
    //  database
    ..registerLazySingleton<CarDataSource>(() => CarDataSourceImpl())
    ..registerLazySingleton<UserFavoriteCarDataSource>(
      () => UserFavoriteCarDataSourceImpl(),
    )
    ..registerLazySingleton<CarRepo>(() => CarRepoImpl(getIt(), getIt()))
    // cubit
    ..registerFactory<AddCarCubit>(() => AddCarCubit(getIt()))
    ..registerFactory<CarCubit>(() => CarCubit(getIt()));
}

_user() {
  getIt
    //  database
    //  ..registerLazySingleton<CarRepo>(() => CarDataSource())
    // cubit
    ..registerLazySingleton<UserDataScourse>(() => UserDataScourseImple())
    ..registerLazySingleton<UserRepo>(() => UserRepoImple(getIt()))
    ..registerLazySingleton<UserCubit>(() => UserCubit());
}
