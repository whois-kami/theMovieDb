import 'package:flutter/material.dart';
import 'package:themoviedb/Widgets/movie_details/movie_details_main.dart';
import 'package:themoviedb/Widgets/movie_details/movie_details_staff.dart';

class MovieDetailWidget extends StatefulWidget {
  final movieId;
  const MovieDetailWidget({super.key, required this.movieId});

  @override
  State<MovieDetailWidget> createState() => _MovieDetailWidgetState();
}

class _MovieDetailWidgetState extends State<MovieDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Кунг-фу панда 4',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
      ),
      body: ColoredBox(
        color: const Color.fromRGBO(242, 221, 179, 1),
        child: ListView(
          children: const [
            MovieDetailsMain(),
            MovieDetailsStaff(),
          ],
        ),
      ),
    );
  }
}
