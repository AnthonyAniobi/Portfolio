import 'package:flutter/material.dart';
import 'package:portfolio/screens/my_works/my_works.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    ListenableProvider(
      create: (context) => ThemeColorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: AppRouter.home,
      // routes: AppRouter.routes,
      home: MyWorksScreen(),
    );
  }
}
