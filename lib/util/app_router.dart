import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/home/home.dart';
import 'package:portfolio/screens/my_works/my_works.dart';
import 'package:portfolio/screens/my_works_dialog/my_works_dialog.dart';
import 'package:portfolio/screens/slideshow/slideshow.dart';

class AppRouter {
  static String home = '/';
  static String about = 'about';
  static String myWorks = 'my_works';
  static String slideShow = 'slideshow';

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    about: (context) => const AboutScreen(),
    myWorks: (context) => const MyWorksDialog(), //MyWorksScreen(),
    slideShow: (context) => const SlideshowScreen(),
  };
}
