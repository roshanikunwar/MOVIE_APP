import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/core/router.dart';
import 'package:flutter_online_course/core/router.gr.dart';
import 'package:flutter_online_course/feature/auth/presentation/blocs/app_bloc/app_cubit.dart';
import 'package:flutter_online_course/feature/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bootstrap.dart';

GetIt getIt = GetIt.instance;

void main() async {
  await bootstrap();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AppCubit>()..checkIfUserIsLoggedInPreviously(),
        ),
      ],
      child: BlocListener<AppCubit, AppState>(
        listener: (context, state) {
          print("state $state");
          state.maybeWhen(
              orElse: () {},
              isLoggedIn: () {
                _appRouter.push(const MovieHomeRoute());
              },
              isNotLoggedIn: () {
                _appRouter.push(const LoginRoute());
              });
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
