import 'package:get_it/get_it.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/data/auth_data_source.dart';
import 'package:taggira/features/auth/repo/auth_repo.dart';

final getIt = GetIt.instance;

void setupDI() {
  _auth();
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
