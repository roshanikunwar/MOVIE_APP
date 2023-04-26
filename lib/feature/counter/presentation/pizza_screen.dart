import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/feature/counter/data/models/pizza.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/pizza_cubit/pizza_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/pizza_list_screen.dart';
import 'package:flutter_online_course/main.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({Key? key}) : super(key: key);

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
  late PizzaCubit _pizzaCubit;

  @override
  void initState() {
    super.initState();

    /// creating an object using cascade operator
    _pizzaCubit = getIt<PizzaCubit>()..fetchPizza();
    getIt<MovieCubit>().getUpcomingMovies(
        apiUrl:
            'http://api.themoviedb.org/3/movie/upcoming?api_key=caebc202bd0a26f84f4e0d986beb15cd');
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PizzaCubit, PizzaState>(
      bloc: _pizzaCubit,
      listener: (context, state) {
        if (state is PizzaFetching) {
        } else if (state is PizzaFetched) {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => BlocProvider(
          //       create: (context) => _pizzaCubit,
          //       child: const PizzaListScreen(),
          //     ),
          //   ),
          // );

          //ScaffoldMessenger.of(context).showSnackBar(
          // const SnackBar(content: Text('All pizza is downloaded'),),);
        } else if (state is PizzaFetchError) {}
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pizza Screen'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Pizza initial screeen'),
              Expanded(
                child: BlocBuilder<MovieCubit, MovieState>(
                    bloc: getIt<MovieCubit>(),
                    builder: (context, state) {
                      if (state is MovieFetched) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.moviesCard.length,
                            itemBuilder: (context, index) {
                          final movie = state.moviesCard[index];

                          return ListTile(
                            title: Text(movie.title),
                            subtitle: Text(movie.overview),
                          );
                        });
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//BlocProvider
//BlocBuilder
//BlocListener
//BlocConsumer
//BlocSelector
//MultiBlocListener
//MultiBlocProvider

//dio package
// auto_route
