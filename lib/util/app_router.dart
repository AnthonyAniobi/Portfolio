import 'package:flutter/material.dart';
import 'package:portfolio/screens/education/education_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/personal_projects/personal_projects_screen.dart';
import 'package:portfolio/screens/work_experience/work_experience_screen.dart';

class AppRouter {
  static String home = '/';
  static String personalProjects = '/personal_projects';
  static String education = '/education';
  static String workExperience = "/work_experience";

  static String currentRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    workExperience: (context) => const WorkExperienceScreen(),
    personalProjects: (context) => const PersonalProjectsScreen(),
    education: (contex) => const EducationScreen(),
  };

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static moveTo(String routeName) {
    currentRoute = routeName;
    navigatorKey.currentState!.pushNamed(routeName);
  }
}
