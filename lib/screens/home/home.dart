import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/widgets/header/header.dart';

// import 'package:portfolio/widgets/header/header.dart' deferred as head;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeaderWidget(),
          // Align(
          //   alignment: Alignment(0, -0.5),
          //   child: SizedBox(
          //     child: DefaultTextStyle(
          //       style: AppTextStyle.primary(context, color: Colors.white),
          //       child: AnimatedTextKit(
          //         repeatForever: true,
          //         animatedTexts: [
          //           TypewriterAnimatedText('Hello I am Anthony!',
          //               speed: const Duration(
          //                 milliseconds: 100,
          //               )),
          //         ],
          //         onTap: () {
          //           print("Tap Event");
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
