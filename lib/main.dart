import 'package:flutter/material.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/fluro_router.dart';
import 'package:portfolio/widgets/app_background.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: AppRouter.navigatorKey,
        builder: (context, child) {
          return AppBackground(child: child);
        },
        initialRoute: '/',
        onGenerateRoute: Flurorouter.router.generator,
      );
    });
  }
}
