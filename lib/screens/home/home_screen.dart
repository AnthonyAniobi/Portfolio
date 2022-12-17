import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about/about.dart';
import 'package:portfolio/widgets/experience/experience.dart';
import 'package:portfolio/widgets/header/header.dart';
import 'package:portfolio/widgets/portfolio/portfolio.dart';
import 'package:portfolio/widgets/skills/skills.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderWidget(),
            AboutWidget(),
            ExperienceWidget(),
            SkillsWidget(),
            PortfolioWidget(),
            // SizedBox(
            //   width: 300.0,
            //   child: DefaultTextStyle(
            //     style: const TextStyle(
            //       fontSize: 30.0,
            //       fontFamily: 'Agne',
            //       fontWeight: FontWeight.w900,
            //       color: Colors.black,
            //     ),
            //     child: AnimatedTextKit(
            //       repeatForever: true,
            //       animatedTexts: [
            //         TypewriterAnimatedText('Software Developer',
            //             speed: const Duration(
            //               milliseconds: 100,
            //             )),
            //       ],
            //       onTap: () {
            //         print("Tap Event");
            //       },
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 20),
            // Text('Skills'),
            // Container(
            //   width: 200,
            //   height: 20,
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
