import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: MaterialColor(0xFF3EBACE),
          primaryColor: Color(0xFF3EBACE),
          accentColor: Color(0xFFDBFCF1),
          scaffoldBackgroundColor: Color(0xFFF3F5F7)),
      home: HomeScreen(),
    );
  }
}
