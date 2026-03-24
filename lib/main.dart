import 'package:flutter/material.dart';
import 'package:portfolio/pages/portfolio_page.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/util/fluro_router.dart';
import 'package:portfolio/util/models/nav_index_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider(create: (context) => NavIndexProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anthony Aniobi | Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const PortfolioPage(),
    );
  }
}
