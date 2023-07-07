import 'package:flutter/material.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/core/utils/app_constance.dart';
import 'package:movies/movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(Movies());
  // print(AppConstances.nowPlayingMoviesPath);
  // print(AppConstances.topRatedMoviesPath);
  // print(AppConstances.popularMoviesPath);
}

class Movies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      home: MoviesScreen(),
    );
  }
}
