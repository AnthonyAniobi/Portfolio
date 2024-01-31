import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/blog/blog_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/mobile_projects/mobile_project_screen.dart';
import 'package:portfolio/screens/open_source_projects/open_source_project_screen.dart';
import 'package:portfolio/screens/videos/video_screen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static String currentRoute = '/';

  static final Handler _homeHandler = Handler(
    handlerFunc: (context, parameters) => const HomeScreen(),
  );
  static final Handler _mobileProjectHandler = Handler(
    handlerFunc: (context, parameters) => const MobileProjectScreen(),
  );
  static final Handler _openSourceProjectHandler = Handler(
    handlerFunc: (context, parameters) => const OpenSourceProjectScreen(),
  );
  static final Handler _blogHandler = Handler(
    handlerFunc: (context, parameters) => const BlogScreen(),
  );
  static final Handler _videoHandler = Handler(
    handlerFunc: (context, parameters) => const VideoScreen(),
  );
  static final Handler _contactHandler = Handler(
    handlerFunc: (context, parameters) => const ContactScreen(),
  );

  static void setupRouter() {
    router.define(
      HomeScreen.routeName,
      handler: _homeHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      MobileProjectScreen.routeName,
      handler: _mobileProjectHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      OpenSourceProjectScreen.routeName,
      handler: _openSourceProjectHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      BlogScreen.routeName,
      handler: _blogHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      VideoScreen.routeName,
      handler: _videoHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      ContactScreen.routeName,
      handler: _contactHandler,
      transitionType: TransitionType.fadeIn,
    );
  }

  static void moveTo(String path) {
    currentRoute = path;
    router.navigateTo(navigatorKey.currentContext!, path);
  }
}
