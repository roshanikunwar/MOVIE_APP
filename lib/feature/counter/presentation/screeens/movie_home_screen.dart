import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/core/router.gr.dart';
import 'package:flutter_online_course/core/utils/hive_storage.dart';
import 'package:flutter_online_course/core/utils/shared_pref.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/logout_cubit/logout_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/movie_cubit/movie_details_cubit/movie_details_cubit.dart';
import 'package:flutter_online_course/feature/counter/presentation/widgets/movie_list_widget.dart';
import 'package:flutter_online_course/main.dart';

@RoutePage()
class MovieHomeScreen extends StatefulWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  State<MovieHomeScreen> createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen>
    with SingleTickerProviderStateMixin {
  late MovieCubit _movieCubit;
  late MovieDetailsCubit _movieDetailsCubit;
  late TabController _tabController;
  late LogoutCubit _logoutCubit;

  @override
  void initState() {
    super.initState();
    _movieCubit = getIt<MovieCubit>();
    _logoutCubit = getIt<LogoutCubit>();
    _tabController = TabController(length: 3, vsync: this);
    // ..addListener(() {
    //   if (!_tabController.indexIsChanging) {
    //     if (_tabController.index == 0) {
    //       _movieCubit.getUpcomingMovies(
    //           apiUrl:
    //               'http://api.themoviedb.org/3/movie/popular?api_key=caebc202bd0a26f84f4e0d986beb15cd');
    //     } else if (_tabController.index == 1) {
    //       _movieCubit.getUpcomingMovies(
    //           apiUrl:
    //               'http://api.themoviedb.org/3/movie/upcoming?api_key=caebc202bd0a26f84f4e0d986beb15cd');
    //     }
    //
    //     else if (_tabController.index == 2) {
    //       _movieCubit.getUpcomingMovies(
    //           apiUrl:
    //           'http://api.themoviedb.org/3/movie/top_rated?api_key=caebc202bd0a26f84f4e0d986beb15cd');
    //     }
    //   }
    // });

    _movieCubit.getUpcomingMovies(
        apiUrl:
            'http://api.themoviedb.org/3/movie/popular?api_key=caebc202bd0a26f84f4e0d986beb15cd');

    //setAppBarTitleFromSharedPref();
    setAppBarTitleFromHive();

    _movieDetailsCubit = getIt<MovieDetailsCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<MovieDetailsCubit, MovieDetailsState>(
          bloc: _movieDetailsCubit,
          listener: (context, state) {
            if (state is MovieDetailFetched) {
              final movieDetailModel = state.movieDetailsModel;
              context.router
                  .push(MovieDetailRoute(movieDetailsModel: movieDetailModel));
            } else if (state is MovieDetailError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Center(
                    child: Text(state.error),
                  ),
                ),
              );
            }
          },
        ),
        BlocListener<MovieCubit, MovieState>(
          bloc: _movieCubit,
          listener: (context, state) {
            if (state is MovieError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Center(
                    child: Text(state.message),
                  ),
                ),
              );
            }
          },
        ),
        BlocListener<LogoutCubit, LogoutState>(
          bloc: _logoutCubit,
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                success: () {
                  context.router.replaceAll([const LoginRoute()]);
                });
          },
        ),
      ],
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              color: Colors.black87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "WATCH NOW",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            // HiveUtils.fetchSingleMovie();
                            // HiveUtils.fetchMovies();
                            // context.router.push(const BookmarkedMovieRoute());
                          },
                          icon: const Icon(
                            Icons.bookmark_added_rounded,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            _logoutCubit.logoutUser();
                          },
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          )),
                      IconButton(
                        onPressed: () {
                          //  context.router.push(const MovieSearchRoute());
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  TabBar(
                    onTap: (index) {
                      if (index == 0) {
                        _movieCubit.getUpcomingMovies(
                            apiUrl:
                                'http://api.themoviedb.org/3/movie/popular?api_key=caebc202bd0a26f84f4e0d986beb15cdd');
                      } else if (index == 1) {
                        _movieCubit.getUpcomingMovies(
                            apiUrl:
                                'http://api.themoviedb.org/3/movie/upcoming?api_key=caebc202bd0a26f84f4e0d986beb15cd');
                      } else if (index == 2) {
                        _movieCubit.getUpcomingMovies(
                            apiUrl:
                                'http://api.themoviedb.org/3/movie/top_rated?api_key=caebc202bd0a26f84f4e0d986beb15cd');
                      }
                    },
                    indicatorWeight: 0.1,
                    isScrollable: true,
                    // indicatorPadding: EdgeInsets.zero,
                    indicator: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                          Radius.circular(25.0)), // Creates border
                      color: Colors.red,
                    ),
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'Popular',
                      ),
                      Tab(
                        text: 'Coming Soon',
                      ),
                      Tab(
                        text: 'Top Rated',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // appBar: AppBar(
          //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          //   flexibleSpace: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       const SizedBox(
          //         height: 100,
          //       ),
          //       TabBar(
          //         controller: _tabController,
          //         tabs: const [
          //           Tab(
          //             text: 'Popular',
          //           ),
          //           Tab(
          //             text: 'Coming Soon',
          //           ),
          //           Tab(
          //             text: 'Top Rated',
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),

          body: TabBarView(
            controller: _tabController,
            children: [
              Column(
                children: [buildExpanded()],
              ),
              Column(
                children: [buildExpanded()],
              ),
              Column(
                children: [buildExpanded()],
              )
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded() {
    return Expanded(
      child: BlocBuilder<MovieCubit, MovieState>(
          bloc: _movieCubit,
          builder: (context, state) {
            if (state is MovieFetched) {
              return MovieListWidget(
                movieFetched: state,
                onClick: (int movieId) {
                  _movieDetailsCubit.getMovieDetails(movieId: movieId);
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return const AlertDialog(
                  //       content: Center(
                  //         child: CircularProgressIndicator(),
                  //       ),
                  //     );
                  //   },
                  // );
                },
              );
            } else if (state is MovieFetching) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return const SizedBox.shrink();
          }),
    );
  }

// child: DefaultTabController(
//   length: 3,
//   child: Scaffold(
//     appBar: AppBar(
//         bottom: TabBar(
//       //  controller: _tabController,
//       tabs: const [
//         Tab(
//           text: 'Popular',
//         ),
//         Tab(
//           text: 'Coming Soon',
//         ),
//         Tab(
//           text: 'Top Rated',
//         ),
//       ],
//     )),
//     body:  TabBarView(
//       children: [
//    Center(
//         child: Column(
//           children: [
//
//             Expanded(
//               child: BlocBuilder<MovieCubit, MovieState>(
//                   bloc: _movieCubit,
//                   builder: (context, state) {
//                     if (state is MovieFetched) {
//                       return MovieListWidget(
//                         movieFetched: state,
//                         onClick: (int movieId) {
//                           _movieDetailsCubit.getMovieDetails(movieId: movieId);
//                           showDialog(
//                             context: context,
//                             builder: (context) {
//                               return const AlertDialog(
//                                 content: Center(
//                                   child: CircularProgressIndicator(),
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                       );
//                     }
//                     return const Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }),
//             )
//           ],
//         ),
//       ),
//         Text('Comming soon'),
//         Text('Top Rated')
//       ],
//     ),
//   ),
// ),
// child: Scaffold(
//   appBar: AppBar(
//     title: const Text('Movie Screen'),
//   ),
//   body: Center(
//     child: Column(
//       children: [
//
//         Expanded(
//           child: BlocBuilder<MovieCubit, MovieState>(
//               bloc: _movieCubit,
//               builder: (context, state) {
//                 if (state is MovieFetched) {
//                   return MovieListWidget(
//                     movieFetched: state,
//                     onClick: (int movieId) {
//                       _movieDetailsCubit.getMovieDetails(movieId: movieId);
//                       showDialog(
//                         context: context,
//                         builder: (context) {
//                           return const AlertDialog(
//                             content: Center(
//                               child: CircularProgressIndicator(),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   );
//                 }
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }),
//         )
//       ],
//     ),
//   ),
// ),
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

void setAppBarTitleFromSharedPref() {
  PreferenceUtils.setString('titleBarKey', 'OUR MOVIE APP');
}

void setAppBarTitleFromHive() {
  HiveUtils.setString('titleBarKey', 'OUR MOVIE APP FROM HIVE');
}
