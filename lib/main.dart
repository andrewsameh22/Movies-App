import 'package:flutter/material.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/movies/presentation/screens/movies_screen.dart';

import 'core/utils/app_strings.dart';

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
      title: AppStrings.appName,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Colors.grey.shade900),
      home: MoviesScreen(),
    );
  }
}
