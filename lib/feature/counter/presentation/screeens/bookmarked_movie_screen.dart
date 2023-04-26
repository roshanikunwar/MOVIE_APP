import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_course/core/utils/hive_storage.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_card_model.dart';

@RoutePage()
class BookmarkedMovieScreen extends StatefulWidget {
  const BookmarkedMovieScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkedMovieScreen> createState() => _BookmarkedMovieScreenState();
}

class _BookmarkedMovieScreenState extends State<BookmarkedMovieScreen> {
  List<MovieCardModel> storedMovies = [];

  @override
  void initState() {
    super.initState();
    _fetchStoredMovies();
  }

  /// fetch movie list from the hive storage
  void _fetchStoredMovies() {
    final data = HiveUtils.fetchMovies();
    storedMovies = List<MovieCardModel>.from(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  HiveUtils.deleteAllMovies();
                  _fetchStoredMovies();
                });
              },
              icon: const Icon(Icons.delete))

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:storedMovies.isNotEmpty
        ?GridView.builder(
          itemCount: storedMovies.length,
          itemBuilder: (context, index) {
            final movie = storedMovies[index];

            return GestureDetector(
              onTap: (){
               setState(() {
                  HiveUtils.deleteMovie(movie.id);
                  _fetchStoredMovies();
               });
              },
              // onTap: () => onClick(movie.id),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    width: 190,
                    height: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        width: 160,
                        fit: BoxFit.fill,
                        imageUrl:
                            'https://image.tmdb.org/t/p/w300${movie.posterPath}',
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.black87,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "${movie.title} ",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                maxLines: 4,
                              ),
                              Text(
                                (movie.releaseDate == "")
                                    ? ""
                                    : "(${movie.releaseDate.year})",
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                movie.overview,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              childAspectRatio: 0.6),
        )
            :const Center(
          child:  Text('No saved Movies yet'),
        ),
      ),

    );
  }
}



//logics of deleting list items
// storeMovies is the initial list
/* onTap=>> Delete item from hive storage
storedMovie original list was not deleted
* setState(){}
fetch the updated list from  the hive storage
storedMovies is updated
UI will render new list
* */