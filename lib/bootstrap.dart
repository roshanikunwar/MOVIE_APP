import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_course/core/router.dart';
import 'package:flutter_online_course/core/utils/hive_storage.dart';
import 'package:flutter_online_course/feature/auth/data/app_repo_impl.dart';
import 'package:flutter_online_course/feature/auth/data/register_repo_imp.dart';
import 'package:flutter_online_course/feature/auth/presentation/blocs/app_bloc/app_cubit.dart';
import 'package:flutter_online_course/feature/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_online_course/feature/auth/source/app_source.dart';
import 'package:flutter_online_course/feature/auth/source/register_source.dart';
import 'package:flutter_online_course/feature/counter/data/data_source/logout_data_source.dart';
import 'package:flutter_online_course/feature/counter/data/data_source/movie_data_source.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_card_model.dart';
import 'package:flutter_online_course/feature/counter/data/repository/logout_repo_impl.dart';
import 'package:flutter_online_course/feature/counter/data/repository/movie_repositoroy.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/logout_cubit/logout_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/movie_cubit/movie_details_cubit/movie_details_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/movie_cubit/movie_search_cubit/movie_search_cubit.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'main.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MovieCardAdapter());
  await Hive.openBox('movieDB');

  getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions()));
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

  getIt.registerLazySingleton<HiveUtils>(() => HiveUtils());
  HiveUtils.initDb();

  //SOURCE SINGLETON
  getIt.registerLazySingleton(() => AppSource(getIt<HiveUtils>()));
  getIt.registerLazySingleton(() => RegisterSource(getIt<HiveUtils>()));
  getIt.registerLazySingleton(() => LogoutDataSource(getIt<HiveUtils>()));

  ///REPO SINGLETONS
  getIt.registerLazySingleton(() => AppRepoImpl(getIt<AppSource>()));
  getIt.registerLazySingleton(() => LogoutRepoImpl(getIt<LogoutDataSource>()));
  getIt.registerLazySingleton<MovieRepository>(
      () => MovieRepository(MovieDataSource()));
  getIt.registerLazySingleton<RegisterRepoImpl>(
    () => RegisterRepoImpl(getIt<RegisterSource>()),
  );

  ///CUBIT SINGLETONS
  getIt.registerLazySingleton<AppCubit>(() => AppCubit(getIt<AppRepoImpl>()));
  getIt.registerLazySingleton<MovieSearchCubit>(() => MovieSearchCubit());
  // getIt.registerLazySingleton<RegisterSource>(() => RegisterSource());
  getIt.registerLazySingleton<MovieCubit>(() => MovieCubit());
  getIt.registerLazySingleton<MovieDetailsCubit>(() => MovieDetailsCubit());
  getIt.registerLazySingleton<AuthBloc>(() => AuthBloc());
  getIt.registerLazySingleton<LogoutCubit>(
      () => LogoutCubit(getIt<LogoutRepoImpl>()));
}
