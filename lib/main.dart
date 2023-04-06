import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/models/nav_index_provider.dart';
import 'package:portfolio/widgets/screen_background.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MultiProvider(
    providers: [
      ListenableProvider(create: (context) => NavIndexProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Portfolio web',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: AppRouter.navigatorKey,
        builder: (context, child) => ScreenBackground(child: child!),
        initialRoute: AppRouter.home,
        routes: AppRouter.routes,
      );
    });
  }
}
