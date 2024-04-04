import 'package:flutter/material.dart';
import 'package:themoviedb/Widgets/auth_widget.dart';
import 'package:themoviedb/Widgets/home_widget.dart';
import 'package:themoviedb/Widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/auth': (context) => const AuthWidget(),
        '/home': (context) => const HomeScreenWidget(),
        '/home/movie_detail': (context) {
          final args = ModalRoute.of(context)?.settings.arguments;
          if (args is int) {
            return MovieDetailWidget(
              movieId: args,
            );
          } else {
            return const MovieDetailWidget(
              movieId: 0,
            );
          }
        },
      },
      initialRoute: '/auth',
    );
  }
}
