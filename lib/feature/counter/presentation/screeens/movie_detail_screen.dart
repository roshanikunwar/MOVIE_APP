import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_details_model.dart';

@RoutePage()
class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({Key? key, required this.movieDetailsModel})
      : super(key: key);

  final MovieDetailsModel movieDetailsModel;

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double size = 18.0;
    return Scaffold(
      body: Column(
        children: [
          Stack(children: <Widget>[
            CachedNetworkImage(
              imageUrl:
                  "https://image.tmdb.org/t/p/w300${widget.movieDetailsModel.posterPath}",
              height: height * 0.3,
              fit: BoxFit.cover,
              width: width * 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Align(),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          iconSize: 28),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_border),
                        color: Colors.white,
                        iconSize: 28,
                      ),
                    ],
                  ),
                  // const Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Text(
                  //     'OverView Movies',
                  //     style: TextStyle(color: Colors.white, fontSize: 30),
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
          Container(
            height: height * 0.7,
            decoration: const BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.movieDetailsModel.title,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                          "(${widget.movieDetailsModel.releaseDate.year})"
                              .toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: size,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: size,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: size,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: size,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.amber,
                        size: size,
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  // for(i in )
                  Row(
                    children: [
                      genera(),
                      // genera(),

                      // ListView.builder(
                      //   itemCount: widget.movieDetailsModel.genres.length,
                      //   itemBuilder: (context, index) {
                      //     return Container(
                      //       height: 45,
                      //       width: 100,
                      //       child: Card(
                      //         child: Center(
                      //           child: Text(widget.movieDetailsModel.genres[index].toString()),
                      //         ),
                      //         elevation: 20,
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(10.0),
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // ),
                      const SizedBox(width: 10),
                      // Text(
                      //   'VoteAverage: ${widget.movieDetailsModel.voteAverage} ',
                      //   style: const TextStyle(
                      //       color: Colors.white, fontSize: 18),
                      // ),
                      Text('VoteCount: ${widget.movieDetailsModel.voteCount} ',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18))
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Storyline",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(widget.movieDetailsModel.overview,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container genera() {
    return Container(
      height: 45,
      width: 100,
      child: Card(
        color: Colors.white70,
        child: Center(
          child: Text(
            'Comedy',
          ),
        ),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
